
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* core_power_up ) (struct snd_sof_dev*,unsigned int) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,unsigned int) ;

__attribute__((used)) static inline int snd_sof_dsp_core_power_up(struct snd_sof_dev *sdev,
         unsigned int core_mask)
{
 if (sof_ops(sdev)->core_power_up)
  return sof_ops(sdev)->core_power_up(sdev, core_mask);

 return 0;
}
