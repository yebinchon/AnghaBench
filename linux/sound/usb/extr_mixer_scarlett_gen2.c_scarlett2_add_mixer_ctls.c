
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_ports {int* num; } ;
struct scarlett2_mixer_data {TYPE_1__* info; } ;
typedef int s ;
struct TYPE_2__ {struct scarlett2_ports* ports; } ;


 size_t SCARLETT2_PORT_IN ;
 size_t SCARLETT2_PORT_OUT ;
 size_t SCARLETT2_PORT_TYPE_MIX ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int scarlett2_add_new_ctl (struct usb_mixer_interface*,int *,int,int,char*,int *) ;
 int scarlett2_mixer_ctl ;
 int snprintf (char*,int,char*,char,int) ;

__attribute__((used)) static int scarlett2_add_mixer_ctls(struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;
 const struct scarlett2_ports *ports = private->info->ports;
 int err, i, j;
 int index;
 char s[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];

 int num_inputs = ports[SCARLETT2_PORT_TYPE_MIX].num[SCARLETT2_PORT_OUT];
 int num_outputs = ports[SCARLETT2_PORT_TYPE_MIX].num[SCARLETT2_PORT_IN];

 for (i = 0, index = 0; i < num_outputs; i++) {
  for (j = 0; j < num_inputs; j++, index++) {
   snprintf(s, sizeof(s),
     "Mix %c Input %02d Playback Volume",
     'A' + i, j + 1);
   err = scarlett2_add_new_ctl(mixer, &scarlett2_mixer_ctl,
          index, 1, s, ((void*)0));
   if (err < 0)
    return err;
  }
 }

 return 0;
}
