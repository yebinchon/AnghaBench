
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* dsp_stack ) (struct snd_sof_dev*,void*,int *,int ) ;} ;


 TYPE_1__* sof_arch_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,void*,int *,int ) ;

__attribute__((used)) static inline void sof_stack(struct snd_sof_dev *sdev, void *oops, u32 *stack,
        u32 stack_words)
{
 if (sof_arch_ops(sdev)->dsp_stack)
  sof_arch_ops(sdev)->dsp_stack(sdev, oops, stack, stack_words);
}
