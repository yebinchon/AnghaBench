
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int ioctl_mutex; } ;


 int mutex_lock (int *) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int) ;

bool snd_seq_client_ioctl_lock(int clientid)
{
 struct snd_seq_client *client;

 client = snd_seq_client_use_ptr(clientid);
 if (!client)
  return 0;
 mutex_lock(&client->ioctl_mutex);

 return 1;
}
