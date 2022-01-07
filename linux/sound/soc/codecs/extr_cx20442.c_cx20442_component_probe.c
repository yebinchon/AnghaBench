
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* card; int dev; } ;
struct cx20442_priv {int * tty; int por; } ;
struct TYPE_2__ {scalar_t__ pop_time; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_warn (int ,char*,int) ;
 int kfree (struct cx20442_priv*) ;
 struct cx20442_priv* kzalloc (int,int ) ;
 int regulator_get (int ,char*) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct cx20442_priv*) ;

__attribute__((used)) static int cx20442_component_probe(struct snd_soc_component *component)
{
 struct cx20442_priv *cx20442;

 cx20442 = kzalloc(sizeof(struct cx20442_priv), GFP_KERNEL);
 if (cx20442 == ((void*)0))
  return -ENOMEM;

 cx20442->por = regulator_get(component->dev, "POR");
 if (IS_ERR(cx20442->por)) {
  int err = PTR_ERR(cx20442->por);

  dev_warn(component->dev, "failed to get POR supply (%d)", err);
  if (err == -ENODEV)
   err = -EPROBE_DEFER;
  kfree(cx20442);
  return err;
 }

 cx20442->tty = ((void*)0);

 snd_soc_component_set_drvdata(component, cx20442);
 component->card->pop_time = 0;

 return 0;
}
