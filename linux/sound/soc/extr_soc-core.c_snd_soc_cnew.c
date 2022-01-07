
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
struct snd_kcontrol_new {char* name; scalar_t__ index; } ;
struct snd_kcontrol {int dummy; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char const*,char const*) ;
 int kfree (char*) ;
 int memcpy (struct snd_kcontrol_new*,struct snd_kcontrol_new const*,int) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,void*) ;

struct snd_kcontrol *snd_soc_cnew(const struct snd_kcontrol_new *_template,
      void *data, const char *long_name,
      const char *prefix)
{
 struct snd_kcontrol_new template;
 struct snd_kcontrol *kcontrol;
 char *name = ((void*)0);

 memcpy(&template, _template, sizeof(template));
 template.index = 0;

 if (!long_name)
  long_name = template.name;

 if (prefix) {
  name = kasprintf(GFP_KERNEL, "%s %s", prefix, long_name);
  if (!name)
   return ((void*)0);

  template.name = name;
 } else {
  template.name = long_name;
 }

 kcontrol = snd_ctl_new1(&template, data);

 kfree(name);

 return kcontrol;
}
