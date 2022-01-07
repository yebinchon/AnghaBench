
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dapm_widget {int id; char* name; struct snd_kcontrol** kcontrols; TYPE_2__* kcontrol_news; struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int dev; TYPE_1__* card; } ;
struct snd_kcontrol {int private_free; } ;
struct snd_card {int dummy; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {struct snd_card* snd_card; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dapm_is_shared_kcontrol (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget*,TYPE_2__*,struct snd_kcontrol**) ;
 int dapm_kcontrol_add_widget (struct snd_kcontrol*,struct snd_soc_dapm_widget*) ;
 int dapm_kcontrol_data_alloc (struct snd_soc_dapm_widget*,struct snd_kcontrol*,char const*) ;
 int dapm_kcontrol_free ;
 int dev_err (int ,char*,char*,char const*,int) ;
 char* kasprintf (int ,char*,char*,char*) ;
 int kfree (char*) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_soc_cnew (TYPE_2__*,int *,char const*,char const*) ;
 char* soc_dapm_prefix (struct snd_soc_dapm_context*) ;
 int strlen (char const*) ;

__attribute__((used)) static int dapm_create_or_share_kcontrol(struct snd_soc_dapm_widget *w,
 int kci)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_card *card = dapm->card->snd_card;
 const char *prefix;
 size_t prefix_len;
 int shared;
 struct snd_kcontrol *kcontrol;
 bool wname_in_long_name, kcname_in_long_name;
 char *long_name = ((void*)0);
 const char *name;
 int ret = 0;

 prefix = soc_dapm_prefix(dapm);
 if (prefix)
  prefix_len = strlen(prefix) + 1;
 else
  prefix_len = 0;

 shared = dapm_is_shared_kcontrol(dapm, w, &w->kcontrol_news[kci],
      &kcontrol);

 if (!kcontrol) {
  if (shared) {
   wname_in_long_name = 0;
   kcname_in_long_name = 1;
  } else {
   switch (w->id) {
   case 128:
   case 133:
   case 129:
   case 134:
   case 130:
    wname_in_long_name = 1;
    kcname_in_long_name = 1;
    break;
   case 132:
    wname_in_long_name = 0;
    kcname_in_long_name = 1;
    break;
   case 135:
   case 131:
    wname_in_long_name = 1;
    kcname_in_long_name = 0;
    break;
   default:
    return -EINVAL;
   }
  }

  if (wname_in_long_name && kcname_in_long_name) {






   long_name = kasprintf(GFP_KERNEL, "%s %s",
     w->name + prefix_len,
     w->kcontrol_news[kci].name);
   if (long_name == ((void*)0))
    return -ENOMEM;

   name = long_name;
  } else if (wname_in_long_name) {
   long_name = ((void*)0);
   name = w->name + prefix_len;
  } else {
   long_name = ((void*)0);
   name = w->kcontrol_news[kci].name;
  }

  kcontrol = snd_soc_cnew(&w->kcontrol_news[kci], ((void*)0), name,
     prefix);
  if (!kcontrol) {
   ret = -ENOMEM;
   goto exit_free;
  }

  kcontrol->private_free = dapm_kcontrol_free;

  ret = dapm_kcontrol_data_alloc(w, kcontrol, name);
  if (ret) {
   snd_ctl_free_one(kcontrol);
   goto exit_free;
  }

  ret = snd_ctl_add(card, kcontrol);
  if (ret < 0) {
   dev_err(dapm->dev,
    "ASoC: failed to add widget %s dapm kcontrol %s: %d\n",
    w->name, name, ret);
   goto exit_free;
  }
 }

 ret = dapm_kcontrol_add_widget(kcontrol, w);
 if (ret == 0)
  w->kcontrols[kci] = kcontrol;

exit_free:
 kfree(long_name);

 return ret;
}
