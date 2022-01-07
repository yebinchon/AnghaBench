
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_blocked_lock {int nbl_lock; } ;


 int kfree (struct nfsd4_blocked_lock*) ;
 int locks_delete_block (int *) ;
 int locks_release_private (int *) ;

__attribute__((used)) static void
free_blocked_lock(struct nfsd4_blocked_lock *nbl)
{
 locks_delete_block(&nbl->nbl_lock);
 locks_release_private(&nbl->nbl_lock);
 kfree(nbl);
}
