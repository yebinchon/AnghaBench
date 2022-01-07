
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file_mark {int nfm_mark; int nfm_ref; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int fsnotify_destroy_mark (int *,int ) ;
 int fsnotify_put_mark (int *) ;
 int nfsd_file_fsnotify_group ;

__attribute__((used)) static void
nfsd_file_mark_put(struct nfsd_file_mark *nfm)
{
 if (atomic_dec_and_test(&nfm->nfm_ref)) {

  fsnotify_destroy_mark(&nfm->nfm_mark, nfsd_file_fsnotify_group);
  fsnotify_put_mark(&nfm->nfm_mark);
 }
}
