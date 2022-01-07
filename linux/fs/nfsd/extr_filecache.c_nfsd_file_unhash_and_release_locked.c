
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_file {size_t nf_hashval; int nf_lru; int nf_ref; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int nfb_lock; } ;


 scalar_t__ atomic_add_unless (int *,int,int) ;
 int list_add (int *,struct list_head*) ;
 int lockdep_assert_held (int *) ;
 TYPE_1__* nfsd_file_hashtbl ;
 int nfsd_file_unhash (struct nfsd_file*) ;
 int trace_nfsd_file_unhash_and_release_locked (struct nfsd_file*) ;

__attribute__((used)) static bool
nfsd_file_unhash_and_release_locked(struct nfsd_file *nf, struct list_head *dispose)
{
 lockdep_assert_held(&nfsd_file_hashtbl[nf->nf_hashval].nfb_lock);

 trace_nfsd_file_unhash_and_release_locked(nf);
 if (!nfsd_file_unhash(nf))
  return 0;

 if (atomic_add_unless(&nf->nf_ref, -1, 1))
  return 1;

 list_add(&nf->nf_lru, dispose);
 return 1;
}
