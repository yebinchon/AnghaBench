
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct soc_tplg {int dev; int index; scalar_t__ pos; } ;
struct TYPE_7__ {int index; } ;
struct soc_enum {long private_value; struct soc_enum* name; TYPE_2__ dobj; int mask; int items; void* shift_r; void* shift_l; int reg; int access; int iface; } ;
struct TYPE_8__ {int info; } ;
struct TYPE_9__ {int name; TYPE_3__ ops; int access; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct snd_soc_tplg_enum_control {TYPE_4__ hdr; int mask; int items; int channel; TYPE_1__ priv; } ;
struct snd_soc_tplg_ctl_hdr {int dummy; } ;
struct snd_kcontrol_new {long private_value; struct snd_kcontrol_new* name; TYPE_2__ dobj; int mask; int items; void* shift_r; void* shift_l; int reg; int access; int iface; } ;


 int GFP_KERNEL ;
 int SNDRV_CHMAP_FL ;
 int SNDRV_CHMAP_FR ;
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;





 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ,...) ;
 struct soc_enum* kcalloc (int,int,int ) ;
 int kfree (struct soc_enum*) ;
 struct soc_enum* kstrdup (int ,int ) ;
 struct soc_enum* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int soc_control_err (struct soc_tplg*,TYPE_4__*,int ) ;
 int soc_tplg_denum_create_texts (struct soc_enum*,struct snd_soc_tplg_enum_control*) ;
 int soc_tplg_denum_create_values (struct soc_enum*,struct snd_soc_tplg_enum_control*) ;
 int soc_tplg_denum_remove_texts (struct soc_enum*) ;
 int soc_tplg_denum_remove_values (struct soc_enum*) ;
 int soc_tplg_init_kcontrol (struct soc_tplg*,struct soc_enum*,struct snd_soc_tplg_ctl_hdr*) ;
 int soc_tplg_kcontrol_bind_io (TYPE_4__*,struct soc_enum*,struct soc_tplg*) ;
 scalar_t__ strnlen (int ,scalar_t__) ;
 int tplc_chan_get_reg (struct soc_tplg*,int ,int ) ;
 void* tplc_chan_get_shift (struct soc_tplg*,int ,int ) ;

__attribute__((used)) static struct snd_kcontrol_new *soc_tplg_dapm_widget_denum_create(
 struct soc_tplg *tplg, int num_kcontrols)
{
 struct snd_kcontrol_new *kc;
 struct snd_soc_tplg_enum_control *ec;
 struct soc_enum *se;
 int i, err;

 kc = kcalloc(num_kcontrols, sizeof(*kc), GFP_KERNEL);
 if (kc == ((void*)0))
  return ((void*)0);

 for (i = 0; i < num_kcontrols; i++) {
  ec = (struct snd_soc_tplg_enum_control *)tplg->pos;

  if (strnlen(ec->hdr.name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
       SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
   goto err_se;

  se = kzalloc(sizeof(*se), GFP_KERNEL);
  if (se == ((void*)0))
   goto err_se;

  tplg->pos += (sizeof(struct snd_soc_tplg_enum_control) +
    ec->priv.size);

  dev_dbg(tplg->dev, " adding DAPM widget enum control %s\n",
   ec->hdr.name);

  kc[i].private_value = (long)se;
  kc[i].name = kstrdup(ec->hdr.name, GFP_KERNEL);
  if (kc[i].name == ((void*)0))
   goto err_se;
  kc[i].iface = SNDRV_CTL_ELEM_IFACE_MIXER;
  kc[i].access = ec->hdr.access;


  se->reg = tplc_chan_get_reg(tplg, ec->channel, SNDRV_CHMAP_FL);
  se->shift_l = tplc_chan_get_shift(tplg, ec->channel,
        SNDRV_CHMAP_FL);
  se->shift_r = tplc_chan_get_shift(tplg, ec->channel,
        SNDRV_CHMAP_FR);

  se->items = ec->items;
  se->mask = ec->mask;
  se->dobj.index = tplg->index;

  switch (le32_to_cpu(ec->hdr.ops.info)) {
  case 131:
  case 129:
   err = soc_tplg_denum_create_values(se, ec);
   if (err < 0) {
    dev_err(tplg->dev, "ASoC: could not create values for %s\n",
     ec->hdr.name);
    goto err_se;
   }

  case 132:
  case 130:
  case 128:
   err = soc_tplg_denum_create_texts(se, ec);
   if (err < 0) {
    dev_err(tplg->dev, "ASoC: could not create texts for %s\n",
     ec->hdr.name);
    goto err_se;
   }
   break;
  default:
   dev_err(tplg->dev, "ASoC: invalid enum control type %d for %s\n",
    ec->hdr.ops.info, ec->hdr.name);
   goto err_se;
  }


  err = soc_tplg_kcontrol_bind_io(&ec->hdr, &kc[i], tplg);
  if (err) {
   soc_control_err(tplg, &ec->hdr, ec->hdr.name);
   goto err_se;
  }


  err = soc_tplg_init_kcontrol(tplg, &kc[i],
   (struct snd_soc_tplg_ctl_hdr *)ec);
  if (err < 0) {
   dev_err(tplg->dev, "ASoC: failed to init %s\n",
    ec->hdr.name);
   goto err_se;
  }
 }

 return kc;

err_se:
 for (; i >= 0; i--) {

  se = (struct soc_enum *)kc[i].private_value;

  if (se) {
   soc_tplg_denum_remove_values(se);
   soc_tplg_denum_remove_texts(se);
  }

  kfree(se);
  kfree(kc[i].name);
 }
 kfree(kc);

 return ((void*)0);
}
