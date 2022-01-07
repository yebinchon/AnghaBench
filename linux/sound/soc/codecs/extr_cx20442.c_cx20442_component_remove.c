
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct cx20442_priv {int por; struct tty_struct* tty; } ;


 int IS_ERR (int ) ;
 int kfree (struct cx20442_priv*) ;
 int regulator_put (int ) ;
 struct cx20442_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,int *) ;
 int tty_hangup (struct tty_struct*) ;

__attribute__((used)) static void cx20442_component_remove(struct snd_soc_component *component)
{
 struct cx20442_priv *cx20442 = snd_soc_component_get_drvdata(component);

 if (cx20442->tty) {
  struct tty_struct *tty = cx20442->tty;
  tty_hangup(tty);
 }

 if (!IS_ERR(cx20442->por)) {

  regulator_put(cx20442->por);
 }

 snd_soc_component_set_drvdata(component, ((void*)0));
 kfree(cx20442);
}
