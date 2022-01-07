
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_pnfs_ds {int ds_state; } ;


 int NFS4DS_CONNECTING ;
 int TASK_KILLABLE ;
 int might_sleep () ;
 int wait_on_bit (int *,int ,int ) ;

__attribute__((used)) static void nfs4_wait_ds_connect(struct nfs4_pnfs_ds *ds)
{
 might_sleep();
 wait_on_bit(&ds->ds_state, NFS4DS_CONNECTING,
   TASK_KILLABLE);
}
