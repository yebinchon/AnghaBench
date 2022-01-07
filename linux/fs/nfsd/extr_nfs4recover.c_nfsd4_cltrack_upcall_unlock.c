
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_flags; } ;


 int NFSD4_CLIENT_UPCALL_LOCK ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void
nfsd4_cltrack_upcall_unlock(struct nfs4_client *clp)
{
 smp_mb__before_atomic();
 clear_bit(NFSD4_CLIENT_UPCALL_LOCK, &clp->cl_flags);
 smp_mb__after_atomic();
 wake_up_bit(&clp->cl_flags, NFSD4_CLIENT_UPCALL_LOCK);
}
