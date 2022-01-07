
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int sst_state; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void skl_dsp_set_state_locked(struct sst_dsp *ctx, int state)
{
 mutex_lock(&ctx->mutex);
 ctx->sst_state = state;
 mutex_unlock(&ctx->mutex);
}
