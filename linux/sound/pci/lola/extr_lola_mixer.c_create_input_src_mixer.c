
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int card; int input_src_caps_mask; } ;


 int lola_input_src_mixer ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct lola*) ;

__attribute__((used)) static int create_input_src_mixer(struct lola *chip)
{
 if (!chip->input_src_caps_mask)
  return 0;

 return snd_ctl_add(chip->card,
      snd_ctl_new1(&lola_input_src_mixer, chip));
}
