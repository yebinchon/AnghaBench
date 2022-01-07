
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_ports {int* num; char* dst_descr; } ;
struct scarlett2_mixer_data {TYPE_1__* info; } ;
typedef int s ;
struct TYPE_2__ {struct scarlett2_ports* ports; } ;


 size_t SCARLETT2_PORT_OUT ;
 int SCARLETT2_PORT_TYPE_COUNT ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int scarlett2_add_new_ctl (struct usb_mixer_interface*,int *,int,int,char*,int *) ;
 int scarlett2_mux_src_enum_ctl ;
 int snprintf (char*,int,char const* const,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static int scarlett2_add_mux_enums(struct usb_mixer_interface *mixer)
{
 struct scarlett2_mixer_data *private = mixer->private_data;
 const struct scarlett2_ports *ports = private->info->ports;
 int port_type, channel, i;

 for (i = 0, port_type = 0;
      port_type < SCARLETT2_PORT_TYPE_COUNT;
      port_type++) {
  for (channel = 0;
       channel < ports[port_type].num[SCARLETT2_PORT_OUT];
       channel++, i++) {
   int err;
   char s[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
   const char *const descr = ports[port_type].dst_descr;

   snprintf(s, sizeof(s) - 5, descr, channel + 1);
   strcat(s, " Enum");

   err = scarlett2_add_new_ctl(mixer,
          &scarlett2_mux_src_enum_ctl,
          i, 1, s, ((void*)0));
   if (err < 0)
    return err;
  }
 }

 return 0;
}
