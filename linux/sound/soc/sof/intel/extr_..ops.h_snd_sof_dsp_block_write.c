
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int (* block_write ) (struct snd_sof_dev*,int ,int ,void*,size_t) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,int ,int ,void*,size_t) ;

__attribute__((used)) static inline void snd_sof_dsp_block_write(struct snd_sof_dev *sdev, u32 bar,
        u32 offset, void *src, size_t bytes)
{
 sof_ops(sdev)->block_write(sdev, bar, offset, src, bytes);
}
