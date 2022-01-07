
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct TYPE_2__ {unsigned int size; int max; int gc_interval; } ;
struct xt_hashlimit_htable {int use; int rnd_initialized; int node; TYPE_1__ cfg; int gc_work; struct net* net; int name; int * pde; int lock; scalar_t__ family; scalar_t__ count; int * hash; } ;
struct seq_operations {int dummy; } ;
struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
struct hashlimit_net {int htables; int ip6t_hashlimit; int ipt_hashlimit; } ;
struct hashlimit_cfg3 {int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ NFPROTO_IPV4 ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int cfg_copy (TYPE_1__*,void*,int) ;
 struct seq_operations dl_seq_ops ;
 struct seq_operations dl_seq_ops_v1 ;
 struct seq_operations dl_seq_ops_v2 ;
 int hash ;
 struct hashlimit_net* hashlimit_pernet (struct net*) ;
 int hlist_add_head (int *,int *) ;
 int htable_gc ;
 int kfree (int ) ;
 int kstrdup (char const*,int ) ;
 int msecs_to_jiffies (int ) ;
 int * proc_create_seq_data (char const*,int ,int ,struct seq_operations const*,struct xt_hashlimit_htable*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_init (int *) ;
 int struct_size (struct xt_hashlimit_htable*,int ,unsigned int) ;
 int system_power_efficient_wq ;
 unsigned long totalram_pages () ;
 int vfree (struct xt_hashlimit_htable*) ;
 struct xt_hashlimit_htable* vmalloc (int ) ;

__attribute__((used)) static int htable_create(struct net *net, struct hashlimit_cfg3 *cfg,
    const char *name, u_int8_t family,
    struct xt_hashlimit_htable **out_hinfo,
    int revision)
{
 struct hashlimit_net *hashlimit_net = hashlimit_pernet(net);
 struct xt_hashlimit_htable *hinfo;
 const struct seq_operations *ops;
 unsigned int size, i;
 unsigned long nr_pages = totalram_pages();
 int ret;

 if (cfg->size) {
  size = cfg->size;
 } else {
  size = (nr_pages << PAGE_SHIFT) / 16384 /
         sizeof(struct hlist_head);
  if (nr_pages > 1024 * 1024 * 1024 / PAGE_SIZE)
   size = 8192;
  if (size < 16)
   size = 16;
 }

 hinfo = vmalloc(struct_size(hinfo, hash, size));
 if (hinfo == ((void*)0))
  return -ENOMEM;
 *out_hinfo = hinfo;


 ret = cfg_copy(&hinfo->cfg, (void *)cfg, 3);
 if (ret) {
  vfree(hinfo);
  return ret;
 }

 hinfo->cfg.size = size;
 if (hinfo->cfg.max == 0)
  hinfo->cfg.max = 8 * hinfo->cfg.size;
 else if (hinfo->cfg.max < hinfo->cfg.size)
  hinfo->cfg.max = hinfo->cfg.size;

 for (i = 0; i < hinfo->cfg.size; i++)
  INIT_HLIST_HEAD(&hinfo->hash[i]);

 hinfo->use = 1;
 hinfo->count = 0;
 hinfo->family = family;
 hinfo->rnd_initialized = 0;
 hinfo->name = kstrdup(name, GFP_KERNEL);
 if (!hinfo->name) {
  vfree(hinfo);
  return -ENOMEM;
 }
 spin_lock_init(&hinfo->lock);

 switch (revision) {
 case 1:
  ops = &dl_seq_ops_v1;
  break;
 case 2:
  ops = &dl_seq_ops_v2;
  break;
 default:
  ops = &dl_seq_ops;
 }

 hinfo->pde = proc_create_seq_data(name, 0,
  (family == NFPROTO_IPV4) ?
  hashlimit_net->ipt_hashlimit : hashlimit_net->ip6t_hashlimit,
  ops, hinfo);
 if (hinfo->pde == ((void*)0)) {
  kfree(hinfo->name);
  vfree(hinfo);
  return -ENOMEM;
 }
 hinfo->net = net;

 INIT_DEFERRABLE_WORK(&hinfo->gc_work, htable_gc);
 queue_delayed_work(system_power_efficient_wq, &hinfo->gc_work,
      msecs_to_jiffies(hinfo->cfg.gc_interval));

 hlist_add_head(&hinfo->node, &hashlimit_net->htables);

 return 0;
}
