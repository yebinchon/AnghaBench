
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {scalar_t__ sname; } ;


 int GFP_KERNEL ;
 int kfree (struct snd_soc_dapm_widget*) ;
 struct snd_soc_dapm_widget* kmemdup (struct snd_soc_dapm_widget const*,int,int ) ;
 scalar_t__ kstrdup_const (scalar_t__,int ) ;

__attribute__((used)) static inline struct snd_soc_dapm_widget *dapm_cnew_widget(
 const struct snd_soc_dapm_widget *_widget)
{
 struct snd_soc_dapm_widget *w;

 w = kmemdup(_widget, sizeof(*_widget), GFP_KERNEL);
 if (!w)
  return ((void*)0);





 if (_widget->sname) {
  w->sname = kstrdup_const(_widget->sname, GFP_KERNEL);
  if (!w->sname) {
   kfree(w);
   return ((void*)0);
  }
 }
 return w;
}
