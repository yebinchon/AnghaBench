
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {struct snd_soc_tplg_ops* tplg_ops; } ;
struct snd_soc_tplg_ops {int dummy; } ;



int snd_sof_init_topology(struct snd_sof_dev *sdev,
     struct snd_soc_tplg_ops *ops)
{

 sdev->tplg_ops = ops;
 return 0;
}
