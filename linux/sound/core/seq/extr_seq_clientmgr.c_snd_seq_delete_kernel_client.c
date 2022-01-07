
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct snd_seq_client* clientptr (int) ;
 int in_interrupt () ;
 int kfree (struct snd_seq_client*) ;
 int seq_free_client (struct snd_seq_client*) ;
 scalar_t__ snd_BUG_ON (int ) ;

int snd_seq_delete_kernel_client(int client)
{
 struct snd_seq_client *ptr;

 if (snd_BUG_ON(in_interrupt()))
  return -EBUSY;

 ptr = clientptr(client);
 if (ptr == ((void*)0))
  return -EINVAL;

 seq_free_client(ptr);
 kfree(ptr);
 return 0;
}
