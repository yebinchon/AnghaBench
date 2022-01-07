
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* dsp_oops ) (struct snd_sof_dev*,void*) ;} ;


 TYPE_1__* sof_arch_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,void*) ;

__attribute__((used)) static inline void sof_oops(struct snd_sof_dev *sdev, void *oops)
{
 if (sof_arch_ops(sdev)->dsp_oops)
  sof_arch_ops(sdev)->dsp_oops(sdev, oops);
}
