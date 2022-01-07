
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_seq_client_pool {scalar_t__ client; int output_pool; int input_pool; int output_room; } ;
struct TYPE_6__ {int fifo_pool_size; int * fifo; } ;
struct TYPE_7__ {TYPE_1__ user; } ;
struct snd_seq_client {scalar_t__ number; scalar_t__ type; TYPE_3__* pool; TYPE_2__ data; } ;
struct TYPE_8__ {int size; int room; int counter; } ;


 int EBUSY ;
 int EINVAL ;
 int SNDRV_SEQ_MAX_CLIENT_EVENTS ;
 int SNDRV_SEQ_MAX_EVENTS ;
 scalar_t__ USER_CLIENT ;
 scalar_t__ atomic_read (int *) ;
 int snd_seq_fifo_resize (int *,int) ;
 int snd_seq_ioctl_get_client_pool (struct snd_seq_client*,void*) ;
 int snd_seq_pool_done (TYPE_3__*) ;
 int snd_seq_pool_init (TYPE_3__*) ;
 int snd_seq_pool_mark_closing (TYPE_3__*) ;
 scalar_t__ snd_seq_write_pool_allocated (struct snd_seq_client*) ;

__attribute__((used)) static int snd_seq_ioctl_set_client_pool(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_client_pool *info = arg;
 int rc;

 if (client->number != info->client)
  return -EINVAL;

 if (info->output_pool >= 1 && info->output_pool <= SNDRV_SEQ_MAX_EVENTS &&
     (! snd_seq_write_pool_allocated(client) ||
      info->output_pool != client->pool->size)) {
  if (snd_seq_write_pool_allocated(client)) {

   if (atomic_read(&client->pool->counter))
    return -EBUSY;

   snd_seq_pool_mark_closing(client->pool);
   snd_seq_pool_done(client->pool);
  }
  client->pool->size = info->output_pool;
  rc = snd_seq_pool_init(client->pool);
  if (rc < 0)
   return rc;
 }
 if (client->type == USER_CLIENT && client->data.user.fifo != ((void*)0) &&
     info->input_pool >= 1 &&
     info->input_pool <= SNDRV_SEQ_MAX_CLIENT_EVENTS &&
     info->input_pool != client->data.user.fifo_pool_size) {

  rc = snd_seq_fifo_resize(client->data.user.fifo, info->input_pool);
  if (rc < 0)
   return rc;
  client->data.user.fifo_pool_size = info->input_pool;
 }
 if (info->output_room >= 1 &&
     info->output_room <= client->pool->size) {
  client->pool->room = info->output_room;
 }

 return snd_seq_ioctl_get_client_pool(client, arg);
}
