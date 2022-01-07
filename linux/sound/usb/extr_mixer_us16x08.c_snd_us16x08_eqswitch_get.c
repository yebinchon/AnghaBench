
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct usb_mixer_elem_info {TYPE_1__ head; struct snd_us16x08_eq_store* private_data; } ;
struct snd_us16x08_eq_store {int*** val; } ;
struct snd_kcontrol {struct usb_mixer_elem_info* private_data; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct TYPE_8__ {int index; } ;
struct snd_ctl_elem_value {TYPE_3__ value; TYPE_4__ id; } ;


 size_t EQ_STORE_BAND_IDX (int ) ;
 size_t EQ_STORE_PARAM_IDX (int ) ;

__attribute__((used)) static int snd_us16x08_eqswitch_get(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 int val;
 struct usb_mixer_elem_info *elem = kcontrol->private_data;
 struct snd_us16x08_eq_store *store = elem->private_data;
 int index = ucontrol->id.index;


 val = store->val[EQ_STORE_BAND_IDX(elem->head.id)]
  [EQ_STORE_PARAM_IDX(elem->head.id)][index];
 ucontrol->value.integer.value[0] = val;

 return 0;
}
