
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_pnfs_ds {int ds_state; } ;


 int NFS4DS_CONNECTING ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void nfs4_clear_ds_conn_bit(struct nfs4_pnfs_ds *ds)
{
 smp_mb__before_atomic();
 clear_bit(NFS4DS_CONNECTING, &ds->ds_state);
 smp_mb__after_atomic();
 wake_up_bit(&ds->ds_state, NFS4DS_CONNECTING);
}
