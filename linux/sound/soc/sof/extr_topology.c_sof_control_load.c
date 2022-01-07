
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dobj {struct snd_sof_control* private; } ;
struct soc_mixer_control {struct snd_soc_dobj dobj; } ;
struct soc_enum {struct snd_soc_dobj dobj; } ;
struct soc_bytes_ext {struct snd_soc_dobj dobj; } ;
struct snd_sof_dev {int kcontrol_list; int dev; } ;
struct snd_sof_control {int list; struct snd_sof_dev* sdev; } ;
struct TYPE_2__ {int info; int put; int get; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_1__ ops; int name; int type; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_warn (int ,char*,int ,int ,int ) ;
 int kfree (struct snd_sof_control*) ;
 struct snd_sof_control* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int list_add (int *,int *) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_control_load_bytes (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ;
 int sof_control_load_enum (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ;
 int sof_control_load_volume (struct snd_soc_component*,struct snd_sof_control*,struct snd_kcontrol_new*,struct snd_soc_tplg_ctl_hdr*) ;

__attribute__((used)) static int sof_control_load(struct snd_soc_component *scomp, int index,
       struct snd_kcontrol_new *kc,
       struct snd_soc_tplg_ctl_hdr *hdr)
{
 struct soc_mixer_control *sm;
 struct soc_bytes_ext *sbe;
 struct soc_enum *se;
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_dobj *dobj;
 struct snd_sof_control *scontrol;
 int ret = -EINVAL;

 dev_dbg(sdev->dev, "tplg: load control type %d name : %s\n",
  hdr->type, hdr->name);

 scontrol = kzalloc(sizeof(*scontrol), GFP_KERNEL);
 if (!scontrol)
  return -ENOMEM;

 scontrol->sdev = sdev;

 switch (le32_to_cpu(hdr->ops.info)) {
 case 135:
 case 134:
 case 133:
  sm = (struct soc_mixer_control *)kc->private_value;
  dobj = &sm->dobj;
  ret = sof_control_load_volume(scomp, scontrol, kc, hdr);
  break;
 case 140:
  sbe = (struct soc_bytes_ext *)kc->private_value;
  dobj = &sbe->dobj;
  ret = sof_control_load_bytes(scomp, scontrol, kc, hdr);
  break;
 case 139:
 case 138:
  se = (struct soc_enum *)kc->private_value;
  dobj = &se->dobj;
  ret = sof_control_load_enum(scomp, scontrol, kc, hdr);
  break;
 case 137:
 case 136:
 case 128:
 case 132:
 case 130:
 case 131:
 case 129:
 default:
  dev_warn(sdev->dev, "control type not supported %d:%d:%d\n",
    hdr->ops.get, hdr->ops.put, hdr->ops.info);
  kfree(scontrol);
  return 0;
 }

 dobj->private = scontrol;
 list_add(&scontrol->list, &sdev->kcontrol_list);
 return ret;
}
