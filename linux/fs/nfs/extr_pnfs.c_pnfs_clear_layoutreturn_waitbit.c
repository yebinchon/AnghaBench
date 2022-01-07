
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_inode; int plh_flags; } ;
struct TYPE_2__ {int roc_rpcwaitq; } ;


 int NFS_LAYOUT_RETURN ;
 int NFS_LAYOUT_RETURN_LOCK ;
 TYPE_1__* NFS_SERVER (int ) ;
 int clear_bit (int ,int *) ;
 int clear_bit_unlock (int ,int *) ;
 int rpc_wake_up (int *) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void pnfs_clear_layoutreturn_waitbit(struct pnfs_layout_hdr *lo)
{
 clear_bit_unlock(NFS_LAYOUT_RETURN, &lo->plh_flags);
 clear_bit(NFS_LAYOUT_RETURN_LOCK, &lo->plh_flags);
 smp_mb__after_atomic();
 wake_up_bit(&lo->plh_flags, NFS_LAYOUT_RETURN);
 rpc_wake_up(&NFS_SERVER(lo->plh_inode)->roc_rpcwaitq);
}
