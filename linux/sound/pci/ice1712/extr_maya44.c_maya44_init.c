
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_maya44 {int * wm; struct snd_ice1712* ice; int mutex; } ;
struct TYPE_2__ {int set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int force_rdma1; int own_routing; TYPE_1__ gpio; int * hw_rates; scalar_t__ akm_codecs; struct snd_maya44* spec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAYA_LINE_IN ;
 int dac_rates ;
 struct snd_maya44* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int set_rate ;
 int * wm8776_addr ;
 int wm8776_init (struct snd_ice1712*,int *,int ) ;
 int wm8776_select_input (struct snd_maya44*,int,int ) ;

__attribute__((used)) static int maya44_init(struct snd_ice1712 *ice)
{
 int i;
 struct snd_maya44 *chip;

 chip = kzalloc(sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;
 mutex_init(&chip->mutex);
 chip->ice = ice;
 ice->spec = chip;


 ice->num_total_dacs = 4;
 ice->num_total_adcs = 4;
 ice->akm_codecs = 0;

 for (i = 0; i < 2; i++) {
  wm8776_init(ice, &chip->wm[i], wm8776_addr[i]);
  wm8776_select_input(chip, i, MAYA_LINE_IN);
 }


 ice->hw_rates = &dac_rates;


 ice->gpio.set_pro_rate = set_rate;


 ice->force_rdma1 = 1;


 ice->own_routing = 1;

 return 0;
}
