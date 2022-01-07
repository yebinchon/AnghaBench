
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* trace_init ) (struct snd_sof_dev*,int *) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,int *) ;

__attribute__((used)) static inline int snd_sof_dma_trace_init(struct snd_sof_dev *sdev,
      u32 *stream_tag)
{
 if (sof_ops(sdev)->trace_init)
  return sof_ops(sdev)->trace_init(sdev, stream_tag);

 return 0;
}
