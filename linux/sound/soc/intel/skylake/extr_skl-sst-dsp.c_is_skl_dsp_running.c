
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {scalar_t__ sst_state; } ;


 scalar_t__ SKL_DSP_RUNNING ;

bool is_skl_dsp_running(struct sst_dsp *ctx)
{
 return (ctx->sst_state == SKL_DSP_RUNNING);
}
