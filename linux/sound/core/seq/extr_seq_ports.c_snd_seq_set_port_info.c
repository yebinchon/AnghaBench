
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_port_info {int flags; int time_queue; int synth_voices; int midi_voices; int midi_channels; int type; int capability; scalar_t__* name; } ;
struct snd_seq_client_port {int timestamping; int time_real; int time_queue; int synth_voices; int midi_voices; int midi_channels; int type; int capability; int name; } ;


 int EINVAL ;
 int SNDRV_SEQ_PORT_FLG_TIMESTAMP ;
 int SNDRV_SEQ_PORT_FLG_TIME_REAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int strlcpy (int ,scalar_t__*,int) ;

int snd_seq_set_port_info(struct snd_seq_client_port * port,
     struct snd_seq_port_info * info)
{
 if (snd_BUG_ON(!port || !info))
  return -EINVAL;


 if (info->name[0])
  strlcpy(port->name, info->name, sizeof(port->name));


 port->capability = info->capability;


 port->type = info->type;


 port->midi_channels = info->midi_channels;
 port->midi_voices = info->midi_voices;
 port->synth_voices = info->synth_voices;


 port->timestamping = (info->flags & SNDRV_SEQ_PORT_FLG_TIMESTAMP) ? 1 : 0;
 port->time_real = (info->flags & SNDRV_SEQ_PORT_FLG_TIME_REAL) ? 1 : 0;
 port->time_queue = info->time_queue;

 return 0;
}
