
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; } ;
struct snd_seq_event {TYPE_1__ source; int queue; } ;
struct snd_seq_client {int accept_output; } ;


 int EINVAL ;
 int EPERM ;
 int SNDRV_SEQ_QUEUE_DIRECT ;
 scalar_t__ check_event_type_and_length (struct snd_seq_event*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int) ;
 int snd_seq_deliver_event (struct snd_seq_client*,struct snd_seq_event*,int,int) ;

int snd_seq_kernel_client_dispatch(int client, struct snd_seq_event * ev,
       int atomic, int hop)
{
 struct snd_seq_client *cptr;
 int result;

 if (snd_BUG_ON(!ev))
  return -EINVAL;


 ev->queue = SNDRV_SEQ_QUEUE_DIRECT;
 ev->source.client = client;

 if (check_event_type_and_length(ev))
  return -EINVAL;

 cptr = snd_seq_client_use_ptr(client);
 if (cptr == ((void*)0))
  return -EINVAL;

 if (!cptr->accept_output)
  result = -EPERM;
 else
  result = snd_seq_deliver_event(cptr, ev, atomic, hop);

 snd_seq_client_unlock(cptr);
 return result;
}
