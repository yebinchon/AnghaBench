
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nf_conn {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {int dwork; } ;


 int BUILD_BUG_ON (int) ;
 int CONNTRACK_LOCKS ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ NFCT_INFOMASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SLAB_HWCACHE_ALIGN ;
 int SLAB_TYPESAFE_BY_RCU ;
 TYPE_1__ conntrack_gc_work ;
 int conntrack_gc_work_init (TYPE_1__*) ;
 int kmem_cache_create (char*,int,scalar_t__,int,int *) ;
 int kmem_cache_destroy (int ) ;
 int kvfree (int ) ;
 int nf_conntrack_acct_fini () ;
 int nf_conntrack_acct_init () ;
 int nf_conntrack_cachep ;
 int nf_conntrack_ecache_fini () ;
 int nf_conntrack_ecache_init () ;
 int nf_conntrack_expect_fini () ;
 int nf_conntrack_expect_init () ;
 int nf_conntrack_generation ;
 int nf_conntrack_hash ;
 int nf_conntrack_helper_fini () ;
 int nf_conntrack_helper_init () ;
 int nf_conntrack_htable_size ;
 int nf_conntrack_labels_fini () ;
 int nf_conntrack_labels_init () ;
 int * nf_conntrack_locks ;
 int nf_conntrack_max ;
 int nf_conntrack_proto_init () ;
 int nf_conntrack_seqadj_fini () ;
 int nf_conntrack_seqadj_init () ;
 int nf_conntrack_timeout_fini () ;
 int nf_conntrack_timeout_init () ;
 int nf_conntrack_tstamp_fini () ;
 int nf_conntrack_tstamp_init () ;
 int nf_ct_alloc_hashtable (int*,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int seqcount_init (int *) ;
 int spin_lock_init (int *) ;
 int system_power_efficient_wq ;
 unsigned int total_extension_size () ;
 unsigned long totalram_pages () ;

int nf_conntrack_init_start(void)
{
 unsigned long nr_pages = totalram_pages();
 int max_factor = 8;
 int ret = -ENOMEM;
 int i;


 BUILD_BUG_ON(total_extension_size() > 255u);

 seqcount_init(&nf_conntrack_generation);

 for (i = 0; i < CONNTRACK_LOCKS; i++)
  spin_lock_init(&nf_conntrack_locks[i]);

 if (!nf_conntrack_htable_size) {





  nf_conntrack_htable_size
   = (((nr_pages << PAGE_SHIFT) / 16384)
      / sizeof(struct hlist_head));
  if (nr_pages > (4 * (1024 * 1024 * 1024 / PAGE_SIZE)))
   nf_conntrack_htable_size = 65536;
  else if (nr_pages > (1024 * 1024 * 1024 / PAGE_SIZE))
   nf_conntrack_htable_size = 16384;
  if (nf_conntrack_htable_size < 32)
   nf_conntrack_htable_size = 32;





  max_factor = 4;
 }

 nf_conntrack_hash = nf_ct_alloc_hashtable(&nf_conntrack_htable_size, 1);
 if (!nf_conntrack_hash)
  return -ENOMEM;

 nf_conntrack_max = max_factor * nf_conntrack_htable_size;

 nf_conntrack_cachep = kmem_cache_create("nf_conntrack",
      sizeof(struct nf_conn),
      NFCT_INFOMASK + 1,
      SLAB_TYPESAFE_BY_RCU | SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!nf_conntrack_cachep)
  goto err_cachep;

 ret = nf_conntrack_expect_init();
 if (ret < 0)
  goto err_expect;

 ret = nf_conntrack_acct_init();
 if (ret < 0)
  goto err_acct;

 ret = nf_conntrack_tstamp_init();
 if (ret < 0)
  goto err_tstamp;

 ret = nf_conntrack_ecache_init();
 if (ret < 0)
  goto err_ecache;

 ret = nf_conntrack_timeout_init();
 if (ret < 0)
  goto err_timeout;

 ret = nf_conntrack_helper_init();
 if (ret < 0)
  goto err_helper;

 ret = nf_conntrack_labels_init();
 if (ret < 0)
  goto err_labels;

 ret = nf_conntrack_seqadj_init();
 if (ret < 0)
  goto err_seqadj;

 ret = nf_conntrack_proto_init();
 if (ret < 0)
  goto err_proto;

 conntrack_gc_work_init(&conntrack_gc_work);
 queue_delayed_work(system_power_efficient_wq, &conntrack_gc_work.dwork, HZ);

 return 0;

err_proto:
 nf_conntrack_seqadj_fini();
err_seqadj:
 nf_conntrack_labels_fini();
err_labels:
 nf_conntrack_helper_fini();
err_helper:
 nf_conntrack_timeout_fini();
err_timeout:
 nf_conntrack_ecache_fini();
err_ecache:
 nf_conntrack_tstamp_fini();
err_tstamp:
 nf_conntrack_acct_fini();
err_acct:
 nf_conntrack_expect_fini();
err_expect:
 kmem_cache_destroy(nf_conntrack_cachep);
err_cachep:
 kvfree(nf_conntrack_hash);
 return ret;
}
