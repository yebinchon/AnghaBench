
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_mixer_interface {int chip; TYPE_2__* hostif; } ;
struct usb_mixer_elem_info {int* cache_val; int cached; } ;
struct snd_us16x08_meter_store {struct snd_us16x08_meter_store* comp_store; } ;
struct snd_us16x08_eq_store {struct snd_us16x08_eq_store* comp_store; } ;
struct snd_us16x08_comp_store {struct snd_us16x08_comp_store* comp_store; } ;
struct TYPE_10__ {int num_channels; char* name; int default_val; int type; int control_id; int * kcontrol_new; } ;
struct TYPE_8__ {int bInterfaceNumber; } ;
struct TYPE_9__ {TYPE_1__ desc; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;
 int SND_US16X08_ID_METER ;
 int SND_US16X08_ID_ROUTE ;
 int SND_US16X08_MAX_CHANNELS ;
 int USB_MIXER_U16 ;
 int USB_MIXER_U8 ;
 int add_new_ctl (struct usb_mixer_interface*,int *,int ,int ,int,char*,struct snd_us16x08_meter_store*,int,struct usb_mixer_elem_info**) ;
 TYPE_3__* channel_controls ;
 TYPE_3__* comp_controls ;
 TYPE_3__* eq_controls ;
 TYPE_3__* master_controls ;
 struct snd_us16x08_meter_store* snd_us16x08_create_comp_store () ;
 struct snd_us16x08_meter_store* snd_us16x08_create_eq_store () ;
 struct snd_us16x08_meter_store* snd_us16x08_create_meter_store () ;
 int snd_us16x08_meter_ctl ;
 int snd_us16x08_route_ctl ;
 int usb_audio_dbg (int ,char*,int) ;

int snd_us16x08_controls_create(struct usb_mixer_interface *mixer)
{
 int i, j;
 int err;
 struct usb_mixer_elem_info *elem;
 struct snd_us16x08_comp_store *comp_store;
 struct snd_us16x08_meter_store *meter_store;
 struct snd_us16x08_eq_store *eq_store;


 if (mixer->hostif->desc.bInterfaceNumber == 3) {


  err = add_new_ctl(mixer, &snd_us16x08_route_ctl,
   SND_US16X08_ID_ROUTE, USB_MIXER_U8, 8, "Line Out Route",
   ((void*)0), 0, &elem);
  if (err < 0) {
   usb_audio_dbg(mixer->chip,
    "Failed to create route control, err:%d\n",
    err);
   return err;
  }
  for (i = 0; i < 8; i++)
   elem->cache_val[i] = i < 2 ? i : i + 2;
  elem->cached = 0xff;


  comp_store = snd_us16x08_create_comp_store();
  if (!comp_store)
   return -ENOMEM;


  for (i = 0; i < ARRAY_SIZE(master_controls); i++) {

   err = add_new_ctl(mixer,
    master_controls[i].kcontrol_new,
    master_controls[i].control_id,
    master_controls[i].type,
    master_controls[i].num_channels,
    master_controls[i].name,
    comp_store,
    i == 0,
    &elem);
   if (err < 0)
    return err;
   elem->cache_val[0] = master_controls[i].default_val;
   elem->cached = 1;
  }


  for (i = 0; i < ARRAY_SIZE(channel_controls); i++) {

   err = add_new_ctl(mixer,
    channel_controls[i].kcontrol_new,
    channel_controls[i].control_id,
    channel_controls[i].type,
    channel_controls[i].num_channels,
    channel_controls[i].name,
    comp_store,
    0, &elem);
   if (err < 0)
    return err;
   for (j = 0; j < SND_US16X08_MAX_CHANNELS; j++) {
    elem->cache_val[j] =
     channel_controls[i].default_val;
   }
   elem->cached = 0xffff;
  }


  eq_store = snd_us16x08_create_eq_store();
  if (!eq_store)
   return -ENOMEM;


  for (i = 0; i < ARRAY_SIZE(eq_controls); i++) {

   err = add_new_ctl(mixer,
    eq_controls[i].kcontrol_new,
    eq_controls[i].control_id,
    eq_controls[i].type,
    eq_controls[i].num_channels,
    eq_controls[i].name,
    eq_store,
    i == 0,
    ((void*)0));
   if (err < 0)
    return err;
  }


  for (i = 0; i < ARRAY_SIZE(comp_controls); i++) {

   err = add_new_ctl(mixer,
    comp_controls[i].kcontrol_new,
    comp_controls[i].control_id,
    comp_controls[i].type,
    comp_controls[i].num_channels,
    comp_controls[i].name,
    comp_store,
    0, ((void*)0));
   if (err < 0)
    return err;
  }


  meter_store = snd_us16x08_create_meter_store();
  if (!meter_store)
   return -ENOMEM;




  meter_store->comp_store = comp_store;
  err = add_new_ctl(mixer, &snd_us16x08_meter_ctl,
   SND_US16X08_ID_METER, USB_MIXER_U16, 0, "Level Meter",
   meter_store, 1, ((void*)0));
  if (err < 0)
   return err;
 }

 return 0;
}
