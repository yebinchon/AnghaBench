
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* trace_trigger ) (struct snd_sof_dev*,int) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,int) ;

__attribute__((used)) static inline int snd_sof_dma_trace_trigger(struct snd_sof_dev *sdev, int cmd)
{
 if (sof_ops(sdev)->trace_trigger)
  return sof_ops(sdev)->trace_trigger(sdev, cmd);

 return 0;
}
