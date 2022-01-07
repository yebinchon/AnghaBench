
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; int port; } ;
struct snd_seq_port_info {int capability; int type; int midi_channels; int midi_voices; TYPE_1__ addr; struct snd_seq_port_callback* kernel; int name; } ;
struct snd_seq_port_callback {int dummy; } ;
typedef int portinfo ;


 int SNDRV_SEQ_IOCTL_CREATE_PORT ;
 int memset (struct snd_seq_port_info*,int ,int) ;
 int snd_seq_kernel_client_ctl (int,int ,struct snd_seq_port_info*) ;
 int strlcpy (int ,char*,int) ;

int snd_seq_event_port_attach(int client,
         struct snd_seq_port_callback *pcbp,
         int cap, int type, int midi_channels,
         int midi_voices, char *portname)
{
 struct snd_seq_port_info portinfo;
 int ret;


 memset(&portinfo, 0, sizeof(portinfo));
 portinfo.addr.client = client;
 strlcpy(portinfo.name, portname ? portname : "Unnamed port",
  sizeof(portinfo.name));

 portinfo.capability = cap;
 portinfo.type = type;
 portinfo.kernel = pcbp;
 portinfo.midi_channels = midi_channels;
 portinfo.midi_voices = midi_voices;


 ret = snd_seq_kernel_client_ctl(client,
     SNDRV_SEQ_IOCTL_CREATE_PORT,
     &portinfo);

 if (ret >= 0)
  ret = portinfo.addr.port;

 return ret;
}
