
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int set_pro_rate; } ;
struct snd_ice1712 {int num_total_dacs; int num_total_adcs; int pm_suspend_enabled; TYPE_3__ gpio; int pm_resume; int card; struct psc724_spec* spec; } ;
struct TYPE_8__ {int write; } ;
struct TYPE_11__ {int card; TYPE_2__ ops; } ;
struct TYPE_7__ {int write; } ;
struct TYPE_10__ {int card; TYPE_1__ ops; } ;
struct psc724_spec {int hp_work; TYPE_5__ wm8766; TYPE_4__ wm8776; struct snd_ice1712* ice; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WM8766_IF_FMT_I2S ;
 int WM8766_IF_IWL_24BIT ;
 struct psc724_spec* kzalloc (int,int ) ;
 int psc724_resume ;
 int psc724_set_jack_detection (struct snd_ice1712*,int) ;
 int psc724_set_pro_rate ;
 int psc724_update_hp_jack_state ;
 int psc724_wm8766_write ;
 int psc724_wm8776_write ;
 int snd_wm8766_init (TYPE_5__*) ;
 int snd_wm8766_set_if (TYPE_5__*,int) ;
 int snd_wm8776_init (TYPE_4__*) ;

__attribute__((used)) static int psc724_init(struct snd_ice1712 *ice)
{
 struct psc724_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;
 spec->ice = ice;

 ice->num_total_dacs = 6;
 ice->num_total_adcs = 2;
 spec->wm8776.ops.write = psc724_wm8776_write;
 spec->wm8776.card = ice->card;
 snd_wm8776_init(&spec->wm8776);
 spec->wm8766.ops.write = psc724_wm8766_write;
 spec->wm8766.card = ice->card;




 snd_wm8766_init(&spec->wm8766);
 snd_wm8766_set_if(&spec->wm8766,
   WM8766_IF_FMT_I2S | WM8766_IF_IWL_24BIT);
 ice->gpio.set_pro_rate = psc724_set_pro_rate;
 INIT_DELAYED_WORK(&spec->hp_work, psc724_update_hp_jack_state);
 psc724_set_jack_detection(ice, 1);
 return 0;
}
