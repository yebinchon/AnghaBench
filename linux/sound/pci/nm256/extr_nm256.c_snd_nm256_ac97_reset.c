
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {struct nm256* private_data; } ;
struct nm256 {int in_resume; int reset_workaround_2; int reset_workaround; } ;
struct TYPE_3__ {int value; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nm256_ac97_init_val ;
 int snd_nm256_ac97_write (struct snd_ac97*,int ,int ) ;
 int snd_nm256_writeb (struct nm256*,int,int) ;

__attribute__((used)) static void
snd_nm256_ac97_reset(struct snd_ac97 *ac97)
{
 struct nm256 *chip = ac97->private_data;


 snd_nm256_writeb(chip, 0x6c0, 1);
 if (! chip->reset_workaround) {

  snd_nm256_writeb(chip, 0x6cc, 0x87);
 }
 if (! chip->reset_workaround_2) {

  snd_nm256_writeb(chip, 0x6cc, 0x80);
  snd_nm256_writeb(chip, 0x6cc, 0x0);
 }
 if (! chip->in_resume) {
  int i;
  for (i = 0; i < ARRAY_SIZE(nm256_ac97_init_val); i++) {



   snd_nm256_ac97_write(ac97, nm256_ac97_init_val[i].reg,
          nm256_ac97_init_val[i].value);
  }
 }
}
