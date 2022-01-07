
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int new_power; int (* event ) (struct snd_soc_dapm_widget*,int *,int) ;int event_flags; int name; TYPE_1__* dapm; } ;
struct snd_soc_card {int pop_time; } ;
struct TYPE_2__ {int dev; } ;
 int WARN (int,char*,int) ;
 int dev_err (int ,char*,char const*,int ,int) ;
 int pop_dbg (int ,int ,char*,int ,char const*) ;
 int soc_dapm_async_complete (TYPE_1__*) ;
 int stub1 (struct snd_soc_dapm_widget*,int *,int) ;
 int trace_snd_soc_dapm_widget_event_done (struct snd_soc_dapm_widget*,int) ;
 int trace_snd_soc_dapm_widget_event_start (struct snd_soc_dapm_widget*,int) ;

__attribute__((used)) static void dapm_seq_check_event(struct snd_soc_card *card,
     struct snd_soc_dapm_widget *w, int event)
{
 const char *ev_name;
 int power, ret;

 switch (event) {
 case 130:
  ev_name = "PRE_PMU";
  power = 1;
  break;
 case 132:
  ev_name = "POST_PMU";
  power = 1;
  break;
 case 131:
  ev_name = "PRE_PMD";
  power = 0;
  break;
 case 133:
  ev_name = "POST_PMD";
  power = 0;
  break;
 case 128:
  ev_name = "WILL_PMU";
  power = 1;
  break;
 case 129:
  ev_name = "WILL_PMD";
  power = 0;
  break;
 default:
  WARN(1, "Unknown event %d\n", event);
  return;
 }

 if (w->new_power != power)
  return;

 if (w->event && (w->event_flags & event)) {
  pop_dbg(w->dapm->dev, card->pop_time, "pop test : %s %s\n",
   w->name, ev_name);
  soc_dapm_async_complete(w->dapm);
  trace_snd_soc_dapm_widget_event_start(w, event);
  ret = w->event(w, ((void*)0), event);
  trace_snd_soc_dapm_widget_event_done(w, event);
  if (ret < 0)
   dev_err(w->dapm->dev, "ASoC: %s: %s event failed: %d\n",
          ev_name, w->name, ret);
 }
}
