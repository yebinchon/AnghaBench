
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uac_mixer_unit_descriptor {int bNrInPins; int bLength; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;





 int get_cluster_channels_v3 (struct mixer_build*,int ) ;
 int uac3_mixer_unit_wClusterDescrID (struct uac_mixer_unit_descriptor*) ;
 int uac_mixer_unit_bNrChannels (struct uac_mixer_unit_descriptor*) ;

__attribute__((used)) static int uac_mixer_unit_get_channels(struct mixer_build *state,
           struct uac_mixer_unit_descriptor *desc)
{
 int mu_channels;

 switch (state->mixer->protocol) {
 case 130:
 case 129:
 default:
  if (desc->bLength < sizeof(*desc) + desc->bNrInPins + 1)
   return 0;
  mu_channels = uac_mixer_unit_bNrChannels(desc);
  break;
 case 128:
  mu_channels = get_cluster_channels_v3(state,
    uac3_mixer_unit_wClusterDescrID(desc));
  break;
 }

 return mu_channels;
}
