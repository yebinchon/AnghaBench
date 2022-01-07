
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_file {size_t nf_hashval; int nf_lru; int nf_node; int nf_net; } ;
struct TYPE_2__ {int nfb_count; int nfb_lock; } ;


 int atomic_long_dec (int *) ;
 int hlist_del_rcu (int *) ;
 int list_empty (int *) ;
 int list_lru_del (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int net_generic (int ,int ) ;
 scalar_t__ nfsd_file_check_write_error (struct nfsd_file*) ;
 TYPE_1__* nfsd_file_hashtbl ;
 int nfsd_file_lru ;
 int nfsd_filecache_count ;
 int nfsd_net_id ;
 int nfsd_reset_boot_verifier (int ) ;
 int trace_nfsd_file_unhash (struct nfsd_file*) ;

__attribute__((used)) static void
nfsd_file_do_unhash(struct nfsd_file *nf)
{
 lockdep_assert_held(&nfsd_file_hashtbl[nf->nf_hashval].nfb_lock);

 trace_nfsd_file_unhash(nf);

 if (nfsd_file_check_write_error(nf))
  nfsd_reset_boot_verifier(net_generic(nf->nf_net, nfsd_net_id));
 --nfsd_file_hashtbl[nf->nf_hashval].nfb_count;
 hlist_del_rcu(&nf->nf_node);
 if (!list_empty(&nf->nf_lru))
  list_lru_del(&nfsd_file_lru, &nf->nf_lru);
 atomic_long_dec(&nfsd_filecache_count);
}
