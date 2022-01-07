
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int client; } ;
struct snd_seq_port_subscribe {int dest; TYPE_1__ sender; } ;
struct snd_seq_client_port {int c_src; } ;
struct snd_seq_client {int dummy; } ;


 int EINVAL ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int ) ;
 int snd_seq_port_get_subscription (int *,int *,struct snd_seq_port_subscribe*) ;
 int snd_seq_port_unlock (struct snd_seq_client_port*) ;
 struct snd_seq_client_port* snd_seq_port_use_ptr (struct snd_seq_client*,int ) ;

__attribute__((used)) static int snd_seq_ioctl_get_subscription(struct snd_seq_client *client,
       void *arg)
{
 struct snd_seq_port_subscribe *subs = arg;
 int result;
 struct snd_seq_client *sender = ((void*)0);
 struct snd_seq_client_port *sport = ((void*)0);

 result = -EINVAL;
 if ((sender = snd_seq_client_use_ptr(subs->sender.client)) == ((void*)0))
  goto __end;
 if ((sport = snd_seq_port_use_ptr(sender, subs->sender.port)) == ((void*)0))
  goto __end;
 result = snd_seq_port_get_subscription(&sport->c_src, &subs->dest,
            subs);
      __end:
       if (sport)
  snd_seq_port_unlock(sport);
 if (sender)
  snd_seq_client_unlock(sender);

 return result;
}
