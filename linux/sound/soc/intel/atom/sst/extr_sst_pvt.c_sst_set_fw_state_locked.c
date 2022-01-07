
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int sst_state; int sst_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sst_set_fw_state_locked(
  struct intel_sst_drv *sst_drv_ctx, int sst_state)
{
 mutex_lock(&sst_drv_ctx->sst_lock);
 sst_drv_ctx->sst_state = sst_state;
 mutex_unlock(&sst_drv_ctx->sst_lock);
}
