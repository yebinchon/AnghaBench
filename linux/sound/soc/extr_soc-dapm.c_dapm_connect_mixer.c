
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_path {TYPE_1__* sink; int name; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int num_kcontrols; TYPE_2__* kcontrol_news; } ;


 int ENODEV ;
 int dapm_set_mixer_path_status (struct snd_soc_dapm_path*,int,int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int dapm_connect_mixer(struct snd_soc_dapm_context *dapm,
 struct snd_soc_dapm_path *path, const char *control_name)
{
 int i, nth_path = 0;


 for (i = 0; i < path->sink->num_kcontrols; i++) {
  if (!strcmp(control_name, path->sink->kcontrol_news[i].name)) {
   path->name = path->sink->kcontrol_news[i].name;
   dapm_set_mixer_path_status(path, i, nth_path++);
   return 0;
  }
 }
 return -ENODEV;
}
