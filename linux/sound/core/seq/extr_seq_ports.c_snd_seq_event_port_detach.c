
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; int port; } ;
struct snd_seq_port_info {TYPE_1__ addr; } ;
typedef int portinfo ;


 int SNDRV_SEQ_IOCTL_DELETE_PORT ;
 int memset (struct snd_seq_port_info*,int ,int) ;
 int snd_seq_kernel_client_ctl (int,int ,struct snd_seq_port_info*) ;

int snd_seq_event_port_detach(int client, int port)
{
 struct snd_seq_port_info portinfo;
 int err;

 memset(&portinfo, 0, sizeof(portinfo));
 portinfo.addr.client = client;
 portinfo.addr.port = port;
 err = snd_seq_kernel_client_ctl(client,
     SNDRV_SEQ_IOCTL_DELETE_PORT,
     &portinfo);

 return err;
}
