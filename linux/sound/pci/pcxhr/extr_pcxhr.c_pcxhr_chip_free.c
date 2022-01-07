
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {int dummy; } ;


 int kfree (struct snd_pcxhr*) ;

__attribute__((used)) static int pcxhr_chip_free(struct snd_pcxhr *chip)
{
 kfree(chip);
 return 0;
}
