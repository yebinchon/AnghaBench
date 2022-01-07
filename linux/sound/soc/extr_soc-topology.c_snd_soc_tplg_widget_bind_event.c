
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct snd_soc_tplg_widget_events {scalar_t__ type; int * event_handler; } ;
struct snd_soc_dapm_widget {int * event; } ;


 int EINVAL ;

int snd_soc_tplg_widget_bind_event(struct snd_soc_dapm_widget *w,
  const struct snd_soc_tplg_widget_events *events,
  int num_events, u16 event_type)
{
 int i;

 w->event = ((void*)0);

 for (i = 0; i < num_events; i++) {
  if (event_type == events[i].type) {


   w->event = events[i].event_handler;
   return 0;
  }
 }


 return -EINVAL;
}
