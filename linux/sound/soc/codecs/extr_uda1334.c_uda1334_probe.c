
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int * list; } ;
struct uda1334_priv {int * rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 struct uda1334_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int uda1334_probe(struct snd_soc_component *component)
{
 struct uda1334_priv *uda1334 = snd_soc_component_get_drvdata(component);

 uda1334->rate_constraint.list = &uda1334->rate_constraint_list[0];
 uda1334->rate_constraint.count =
  ARRAY_SIZE(uda1334->rate_constraint_list);

 return 0;
}
