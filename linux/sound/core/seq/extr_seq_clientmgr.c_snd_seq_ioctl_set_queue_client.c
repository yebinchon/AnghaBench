
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue_client {scalar_t__ used; int queue; } ;
struct snd_seq_client {int number; } ;


 int snd_seq_ioctl_get_queue_client (struct snd_seq_client*,void*) ;
 int snd_seq_queue_use (int ,int ,scalar_t__) ;

__attribute__((used)) static int snd_seq_ioctl_set_queue_client(struct snd_seq_client *client,
       void *arg)
{
 struct snd_seq_queue_client *info = arg;
 int err;

 if (info->used >= 0) {
  err = snd_seq_queue_use(info->queue, client->number, info->used);
  if (err < 0)
   return err;
 }

 return snd_seq_ioctl_get_queue_client(client, arg);
}
