
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_remove_events {int remove_mode; } ;
struct TYPE_3__ {scalar_t__ fifo; } ;
struct TYPE_4__ {TYPE_1__ user; } ;
struct snd_seq_client {scalar_t__ type; int number; TYPE_2__ data; } ;


 int SNDRV_SEQ_REMOVE_INPUT ;
 int SNDRV_SEQ_REMOVE_OUTPUT ;
 scalar_t__ USER_CLIENT ;
 int snd_seq_fifo_clear (scalar_t__) ;
 int snd_seq_queue_remove_cells (int ,struct snd_seq_remove_events*) ;

__attribute__((used)) static int snd_seq_ioctl_remove_events(struct snd_seq_client *client,
           void *arg)
{
 struct snd_seq_remove_events *info = arg;




 if (info->remove_mode & SNDRV_SEQ_REMOVE_INPUT) {




  if (client->type == USER_CLIENT && client->data.user.fifo)
   snd_seq_fifo_clear(client->data.user.fifo);
 }

 if (info->remove_mode & SNDRV_SEQ_REMOVE_OUTPUT)
  snd_seq_queue_remove_cells(client->number, info);

 return 0;
}
