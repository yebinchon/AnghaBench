
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int cs42l56_free_beep (struct snd_soc_component*) ;

__attribute__((used)) static void cs42l56_remove(struct snd_soc_component *component)
{
 cs42l56_free_beep(component);
}
