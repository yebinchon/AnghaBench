
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int block_lock; int ipc_spin_lock; int rx_msg_lock; int sst_lock; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void sst_init_locks(struct intel_sst_drv *ctx)
{
 mutex_init(&ctx->sst_lock);
 spin_lock_init(&ctx->rx_msg_lock);
 spin_lock_init(&ctx->ipc_spin_lock);
 spin_lock_init(&ctx->block_lock);
}
