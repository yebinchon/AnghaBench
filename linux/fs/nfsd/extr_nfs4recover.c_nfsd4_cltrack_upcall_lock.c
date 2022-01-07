
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_flags; } ;


 int NFSD4_CLIENT_UPCALL_LOCK ;
 int TASK_UNINTERRUPTIBLE ;
 int wait_on_bit_lock (int *,int ,int ) ;

__attribute__((used)) static void
nfsd4_cltrack_upcall_lock(struct nfs4_client *clp)
{
 wait_on_bit_lock(&clp->cl_flags, NFSD4_CLIENT_UPCALL_LOCK,
    TASK_UNINTERRUPTIBLE);
}
