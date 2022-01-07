
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int ifindex; } ;
struct net {int dummy; } ;
struct ipt_clusterip_tgt_info {int hash_initval; int hash_mode; int num_total_nodes; int clustermac; } ;
struct clusterip_net {int lock; int mutex; int procdir; int configs; } ;
struct clusterip_config {int list; int entries; int pde; int refcount; struct net* net; int hash_initval; int hash_mode; int num_total_nodes; int clusterip; int clustermac; int ifname; int ifindex; } ;
typedef int __be32 ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct clusterip_config* ERR_PTR (int) ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ __clusterip_config_find (struct net*,int ) ;
 int clusterip_config_init_nodelist (struct clusterip_config*,struct ipt_clusterip_tgt_info const*) ;
 int clusterip_config_put (struct clusterip_config*) ;
 struct clusterip_net* clusterip_pernet (struct net*) ;
 int clusterip_proc_fops ;
 struct net_device* dev_get_by_name (struct net*,char const*) ;
 int dev_mc_add (struct net_device*,int ) ;
 int dev_put (struct net_device*) ;
 int kfree (struct clusterip_config*) ;
 struct clusterip_config* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int memcpy (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,...) ;
 int proc_create_data (char*,int,int ,int *,struct clusterip_config*) ;
 int refcount_set (int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static struct clusterip_config *
clusterip_config_init(struct net *net, const struct ipt_clusterip_tgt_info *i,
        __be32 ip, const char *iniface)
{
 struct clusterip_net *cn = clusterip_pernet(net);
 struct clusterip_config *c;
 struct net_device *dev;
 int err;

 if (iniface[0] == '\0') {
  pr_info("Please specify an interface name\n");
  return ERR_PTR(-EINVAL);
 }

 c = kzalloc(sizeof(*c), GFP_ATOMIC);
 if (!c)
  return ERR_PTR(-ENOMEM);

 dev = dev_get_by_name(net, iniface);
 if (!dev) {
  pr_info("no such interface %s\n", iniface);
  kfree(c);
  return ERR_PTR(-ENOENT);
 }
 c->ifindex = dev->ifindex;
 strcpy(c->ifname, dev->name);
 memcpy(&c->clustermac, &i->clustermac, ETH_ALEN);
 dev_mc_add(dev, c->clustermac);
 dev_put(dev);

 c->clusterip = ip;
 c->num_total_nodes = i->num_total_nodes;
 clusterip_config_init_nodelist(c, i);
 c->hash_mode = i->hash_mode;
 c->hash_initval = i->hash_initval;
 c->net = net;
 refcount_set(&c->refcount, 1);

 spin_lock_bh(&cn->lock);
 if (__clusterip_config_find(net, ip)) {
  err = -EBUSY;
  goto out_config_put;
 }

 list_add_rcu(&c->list, &cn->configs);
 spin_unlock_bh(&cn->lock);
 refcount_set(&c->entries, 1);
 return c;




 spin_lock_bh(&cn->lock);
 list_del_rcu(&c->list);
out_config_put:
 spin_unlock_bh(&cn->lock);
 clusterip_config_put(c);
 return ERR_PTR(err);
}
