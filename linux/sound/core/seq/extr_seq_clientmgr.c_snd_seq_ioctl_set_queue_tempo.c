
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue_tempo {int dummy; } ;
struct snd_seq_client {int number; } ;


 int snd_seq_set_queue_tempo (int ,struct snd_seq_queue_tempo*) ;

__attribute__((used)) static int snd_seq_ioctl_set_queue_tempo(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_queue_tempo *tempo = arg;
 int result;

 result = snd_seq_set_queue_tempo(client->number, tempo);
 return result < 0 ? result : 0;
}
