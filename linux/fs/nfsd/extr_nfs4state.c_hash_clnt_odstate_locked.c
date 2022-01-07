
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_clnt_odstate; int fi_lock; } ;
struct nfs4_clnt_odstate {int co_perfile; struct nfs4_file* co_file; } ;


 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
hash_clnt_odstate_locked(struct nfs4_clnt_odstate *co)
{
 struct nfs4_file *fp = co->co_file;

 lockdep_assert_held(&fp->fi_lock);
 list_add(&co->co_perfile, &fp->fi_clnt_odstate);
}
