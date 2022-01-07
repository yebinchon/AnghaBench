
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwork; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int cancel_delayed_work_sync (int *) ;
 TYPE_1__ conntrack_gc_work ;
 int kmem_cache_destroy (int ) ;
 int kvfree (int ) ;
 int nf_conntrack_acct_fini () ;
 int nf_conntrack_cachep ;
 int nf_conntrack_ecache_fini () ;
 int nf_conntrack_expect_fini () ;
 int nf_conntrack_hash ;
 int nf_conntrack_helper_fini () ;
 int nf_conntrack_labels_fini () ;
 int nf_conntrack_proto_fini () ;
 int nf_conntrack_seqadj_fini () ;
 int nf_conntrack_timeout_fini () ;
 int nf_conntrack_tstamp_fini () ;
 int nf_ct_hook ;

void nf_conntrack_cleanup_end(void)
{
 RCU_INIT_POINTER(nf_ct_hook, ((void*)0));
 cancel_delayed_work_sync(&conntrack_gc_work.dwork);
 kvfree(nf_conntrack_hash);

 nf_conntrack_proto_fini();
 nf_conntrack_seqadj_fini();
 nf_conntrack_labels_fini();
 nf_conntrack_helper_fini();
 nf_conntrack_timeout_fini();
 nf_conntrack_ecache_fini();
 nf_conntrack_tstamp_fini();
 nf_conntrack_acct_fini();
 nf_conntrack_expect_fini();

 kmem_cache_destroy(nf_conntrack_cachep);
}
