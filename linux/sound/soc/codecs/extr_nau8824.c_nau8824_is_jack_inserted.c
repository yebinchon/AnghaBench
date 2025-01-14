
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int status; } ;
struct nau8824 {scalar_t__ irq; struct snd_soc_jack* jack; } ;


 int SND_JACK_HEADPHONE ;

__attribute__((used)) static bool nau8824_is_jack_inserted(struct nau8824 *nau8824)
{
 struct snd_soc_jack *jack = nau8824->jack;
 bool insert = 0;

 if (nau8824->irq && jack)
  insert = jack->status & SND_JACK_HEADPHONE;

 return insert;
}
