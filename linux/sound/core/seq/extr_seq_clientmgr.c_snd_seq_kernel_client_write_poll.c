
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int pool; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int ENXIO ;
 struct snd_seq_client* clientptr (int) ;
 scalar_t__ snd_seq_pool_poll_wait (int ,struct file*,int *) ;
 int snd_seq_write_pool_allocated (struct snd_seq_client*) ;

int snd_seq_kernel_client_write_poll(int clientid, struct file *file, poll_table *wait)
{
 struct snd_seq_client *client;

 client = clientptr(clientid);
 if (client == ((void*)0))
  return -ENXIO;

 if (! snd_seq_write_pool_allocated(client))
  return 1;
 if (snd_seq_pool_poll_wait(client->pool, file, wait))
  return 1;
 return 0;
}
