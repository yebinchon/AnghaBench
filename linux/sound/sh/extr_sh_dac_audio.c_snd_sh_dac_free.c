
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {struct snd_sh_dac* data_buffer; } ;


 int kfree (struct snd_sh_dac*) ;

__attribute__((used)) static int snd_sh_dac_free(struct snd_sh_dac *chip)
{

 kfree(chip->data_buffer);
 kfree(chip);

 return 0;
}
