
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int client; } ;
struct snd_seq_port_info {TYPE_1__ addr; } ;
struct snd_seq_client_port {TYPE_1__ addr; } ;
struct snd_seq_client {int dummy; } ;


 int ENOENT ;
 int ENXIO ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int ) ;
 int snd_seq_get_port_info (struct snd_seq_client_port*,struct snd_seq_port_info*) ;
 struct snd_seq_client_port* snd_seq_port_query_nearest (struct snd_seq_client*,struct snd_seq_port_info*) ;
 int snd_seq_port_unlock (struct snd_seq_client_port*) ;

__attribute__((used)) static int snd_seq_ioctl_query_next_port(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_port_info *info = arg;
 struct snd_seq_client *cptr;
 struct snd_seq_client_port *port = ((void*)0);

 cptr = snd_seq_client_use_ptr(info->addr.client);
 if (cptr == ((void*)0))
  return -ENXIO;


 info->addr.port++;
 port = snd_seq_port_query_nearest(cptr, info);
 if (port == ((void*)0)) {
  snd_seq_client_unlock(cptr);
  return -ENOENT;
 }


 info->addr = port->addr;
 snd_seq_get_port_info(port, info);
 snd_seq_port_unlock(port);
 snd_seq_client_unlock(cptr);

 return 0;
}
