
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct snd_soc_component* disc_data; } ;
struct snd_soc_component {TYPE_1__* card; } ;
struct cx20442_priv {struct tty_struct* tty; } ;
struct TYPE_2__ {int pop_time; } ;


 struct cx20442_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void v253_receive(struct tty_struct *tty,
    const unsigned char *cp, char *fp, int count)
{
 struct snd_soc_component *component = tty->disc_data;
 struct cx20442_priv *cx20442;

 if (!component)
  return;

 cx20442 = snd_soc_component_get_drvdata(component);

 if (!cx20442->tty) {



  cx20442->tty = tty;
  component->card->pop_time = 1;
 }
}
