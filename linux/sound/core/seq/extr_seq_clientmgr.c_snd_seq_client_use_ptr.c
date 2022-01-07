
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int use_lock; } ;


 int SNDRV_CARDS ;
 int SNDRV_SEQ_CLIENTS_PER_CARD ;
 int SNDRV_SEQ_DYNAMIC_CLIENTS_BEGIN ;
 int SNDRV_SEQ_GLOBAL_CLIENTS ;
 int SNDRV_SEQ_MAX_CLIENTS ;
 struct snd_seq_client* clientptr (int) ;
 int clients_lock ;
 scalar_t__* clienttablock ;
 int in_interrupt () ;
 int pr_debug (char*,int) ;
 int request_module (char*,int) ;
 int* seq_client_load ;
 int snd_ecards_limit ;
 int snd_request_card (int) ;
 int snd_seq_device_load_drivers () ;
 int snd_use_lock_use (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct snd_seq_client *snd_seq_client_use_ptr(int clientid)
{
 unsigned long flags;
 struct snd_seq_client *client;

 if (clientid < 0 || clientid >= SNDRV_SEQ_MAX_CLIENTS) {
  pr_debug("ALSA: seq: oops. Trying to get pointer to client %d\n",
      clientid);
  return ((void*)0);
 }
 spin_lock_irqsave(&clients_lock, flags);
 client = clientptr(clientid);
 if (client)
  goto __lock;
 if (clienttablock[clientid]) {
  spin_unlock_irqrestore(&clients_lock, flags);
  return ((void*)0);
 }
 spin_unlock_irqrestore(&clients_lock, flags);
 return ((void*)0);

      __lock:
 snd_use_lock_use(&client->use_lock);
 spin_unlock_irqrestore(&clients_lock, flags);
 return client;
}
