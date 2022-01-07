
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {void (* ipc_dump ) (struct snd_sof_dev*) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 void stub1 (struct snd_sof_dev*) ;

__attribute__((used)) static inline void snd_sof_ipc_dump(struct snd_sof_dev *sdev)
{
 if (sof_ops(sdev)->ipc_dump)
  return sof_ops(sdev)->ipc_dump(sdev);
}
