
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lola {int card; } ;
struct TYPE_3__ {char* name; int private_value; } ;


 TYPE_1__ lola_src_gain_mixer ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (TYPE_1__*,struct lola*) ;

__attribute__((used)) static int create_src_gain_mixer(struct lola *chip,
     int num, int ofs, char *name)
{
 lola_src_gain_mixer.name = name;
 lola_src_gain_mixer.private_value = ofs + (num << 8);
 return snd_ctl_add(chip->card,
      snd_ctl_new1(&lola_src_gain_mixer, chip));
}
