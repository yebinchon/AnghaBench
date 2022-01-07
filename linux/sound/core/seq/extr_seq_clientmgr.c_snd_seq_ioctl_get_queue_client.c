
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue_client {int used; int client; int queue; } ;
struct snd_seq_client {int number; } ;


 int EINVAL ;
 int snd_seq_queue_is_used (int ,int ) ;

__attribute__((used)) static int snd_seq_ioctl_get_queue_client(struct snd_seq_client *client,
       void *arg)
{
 struct snd_seq_queue_client *info = arg;
 int used;

 used = snd_seq_queue_is_used(info->queue, client->number);
 if (used < 0)
  return -EINVAL;
 info->used = used;
 info->client = client->number;

 return 0;
}
