
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {struct skl_dev* thread_context; } ;
struct TYPE_2__ {scalar_t__* state; } ;
struct skl_d0i3_data {scalar_t__ non_streaming; scalar_t__ streaming; scalar_t__ non_d0i3; } ;
struct skl_dev {TYPE_1__ cores; struct skl_d0i3_data d0i3; } ;


 size_t SKL_DSP_CORE0_ID ;
 int SKL_DSP_D0I3_NONE ;
 int SKL_DSP_D0I3_NON_STREAMING ;
 int SKL_DSP_D0I3_STREAMING ;
 scalar_t__ SKL_DSP_RUNNING ;

__attribute__((used)) static int bxt_d0i3_target_state(struct sst_dsp *ctx)
{
 struct skl_dev *skl = ctx->thread_context;
 struct skl_d0i3_data *d0i3 = &skl->d0i3;

 if (skl->cores.state[SKL_DSP_CORE0_ID] != SKL_DSP_RUNNING)
  return SKL_DSP_D0I3_NONE;

 if (d0i3->non_d0i3)
  return SKL_DSP_D0I3_NONE;
 else if (d0i3->streaming)
  return SKL_DSP_D0I3_STREAMING;
 else if (d0i3->non_streaming)
  return SKL_DSP_D0I3_NON_STREAMING;
 else
  return SKL_DSP_D0I3_NONE;
}
