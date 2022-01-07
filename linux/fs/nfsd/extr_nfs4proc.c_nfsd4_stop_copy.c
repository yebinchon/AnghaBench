
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int copy_task; } ;


 int check_and_set_stop_copy (struct nfsd4_copy*) ;
 int kthread_stop (int ) ;
 int nfs4_put_copy (struct nfsd4_copy*) ;

__attribute__((used)) static void nfsd4_stop_copy(struct nfsd4_copy *copy)
{

 if (!check_and_set_stop_copy(copy))
  kthread_stop(copy->copy_task);
 nfs4_put_copy(copy);
}
