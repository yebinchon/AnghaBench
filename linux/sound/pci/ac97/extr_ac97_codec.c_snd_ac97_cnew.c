
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;
struct snd_kcontrol_new {int index; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ac97 {int num; } ;


 int memcpy (struct snd_kcontrol_new*,struct snd_kcontrol_new const*,int) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_ac97*) ;

__attribute__((used)) static struct snd_kcontrol *snd_ac97_cnew(const struct snd_kcontrol_new *_template,
       struct snd_ac97 * ac97)
{
 struct snd_kcontrol_new template;
 memcpy(&template, _template, sizeof(template));
 template.index = ac97->num;
 return snd_ctl_new1(&template, ac97);
}
