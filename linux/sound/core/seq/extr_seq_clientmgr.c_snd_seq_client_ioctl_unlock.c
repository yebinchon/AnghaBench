
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int ioctl_mutex; } ;


 scalar_t__ WARN_ON (int) ;
 int mutex_unlock (int *) ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int) ;

void snd_seq_client_ioctl_unlock(int clientid)
{
 struct snd_seq_client *client;

 client = snd_seq_client_use_ptr(clientid);
 if (WARN_ON(!client))
  return;
 mutex_unlock(&client->ioctl_mutex);




 snd_seq_client_unlock(client);
 snd_seq_client_unlock(client);
}
