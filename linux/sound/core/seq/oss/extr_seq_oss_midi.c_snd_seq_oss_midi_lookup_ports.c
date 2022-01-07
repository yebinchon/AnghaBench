
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; int port; } ;
struct snd_seq_port_info {int client; TYPE_1__ addr; } ;
struct snd_seq_client_info {int client; TYPE_1__ addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT ;
 int SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT ;
 int kfree (struct snd_seq_port_info*) ;
 struct snd_seq_port_info* kzalloc (int,int ) ;
 scalar_t__ snd_seq_kernel_client_ctl (int,int ,struct snd_seq_port_info*) ;
 int snd_seq_oss_midi_check_new_port (struct snd_seq_port_info*) ;

int
snd_seq_oss_midi_lookup_ports(int client)
{
 struct snd_seq_client_info *clinfo;
 struct snd_seq_port_info *pinfo;

 clinfo = kzalloc(sizeof(*clinfo), GFP_KERNEL);
 pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
 if (! clinfo || ! pinfo) {
  kfree(clinfo);
  kfree(pinfo);
  return -ENOMEM;
 }
 clinfo->client = -1;
 while (snd_seq_kernel_client_ctl(client, SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT, clinfo) == 0) {
  if (clinfo->client == client)
   continue;
  pinfo->addr.client = clinfo->client;
  pinfo->addr.port = -1;
  while (snd_seq_kernel_client_ctl(client, SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT, pinfo) == 0)
   snd_seq_oss_midi_check_new_port(pinfo);
 }
 kfree(clinfo);
 kfree(pinfo);
 return 0;
}
