
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {struct skl_dev* thread_context; } ;
struct TYPE_2__ {int* usage_count; int count; int * state; } ;
struct skl_dev {TYPE_1__ cores; } ;


 size_t SKL_DSP_CORE0_ID ;
 int SKL_DSP_RESET ;
 int SKL_DSP_RUNNING ;

void skl_dsp_init_core_state(struct sst_dsp *ctx)
{
 struct skl_dev *skl = ctx->thread_context;
 int i;

 skl->cores.state[SKL_DSP_CORE0_ID] = SKL_DSP_RUNNING;
 skl->cores.usage_count[SKL_DSP_CORE0_ID] = 1;

 for (i = SKL_DSP_CORE0_ID + 1; i < skl->cores.count; i++) {
  skl->cores.state[i] = SKL_DSP_RESET;
  skl->cores.usage_count[i] = 0;
 }
}
