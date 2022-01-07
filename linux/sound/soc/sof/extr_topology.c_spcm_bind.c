
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_sof_widget {int comp_id; } ;
struct TYPE_5__ {TYPE_1__* caps; } ;
struct snd_sof_pcm {TYPE_3__* stream; TYPE_2__ pcm; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_6__ {int comp_id; } ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 struct snd_sof_widget* snd_sof_find_swidget_sname (struct snd_sof_dev*,int ,int) ;

__attribute__((used)) static int spcm_bind(struct snd_sof_dev *sdev, struct snd_sof_pcm *spcm,
       int dir)
{
 struct snd_sof_widget *host_widget;

 host_widget = snd_sof_find_swidget_sname(sdev,
       spcm->pcm.caps[dir].name,
       dir);
 if (!host_widget) {
  dev_err(sdev->dev, "can't find host comp to bind pcm\n");
  return -EINVAL;
 }

 spcm->stream[dir].comp_id = host_widget->comp_id;

 return 0;
}
