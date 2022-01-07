
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* set_clk ) (struct snd_sof_dev*,int ) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,int ) ;

__attribute__((used)) static inline int snd_sof_dsp_set_clk(struct snd_sof_dev *sdev, u32 freq)
{
 if (sof_ops(sdev)->set_clk)
  return sof_ops(sdev)->set_clk(sdev, freq);

 return 0;
}
