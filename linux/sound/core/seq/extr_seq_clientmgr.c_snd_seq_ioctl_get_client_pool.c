
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_seq_client_pool {scalar_t__ input_free; scalar_t__ input_pool; int output_free; int output_pool; int output_room; int client; } ;
struct TYPE_4__ {int fifo; scalar_t__ fifo_pool_size; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
struct snd_seq_client {scalar_t__ type; TYPE_2__ data; TYPE_3__* pool; int number; } ;
struct TYPE_6__ {int room; int size; } ;


 int ENOENT ;
 scalar_t__ USER_CLIENT ;
 int memset (struct snd_seq_client_pool*,int ,int) ;
 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int ) ;
 scalar_t__ snd_seq_fifo_unused_cells (int ) ;
 int snd_seq_unused_cells (TYPE_3__*) ;

__attribute__((used)) static int snd_seq_ioctl_get_client_pool(struct snd_seq_client *client,
      void *arg)
{
 struct snd_seq_client_pool *info = arg;
 struct snd_seq_client *cptr;

 cptr = snd_seq_client_use_ptr(info->client);
 if (cptr == ((void*)0))
  return -ENOENT;
 memset(info, 0, sizeof(*info));
 info->client = cptr->number;
 info->output_pool = cptr->pool->size;
 info->output_room = cptr->pool->room;
 info->output_free = info->output_pool;
 info->output_free = snd_seq_unused_cells(cptr->pool);
 if (cptr->type == USER_CLIENT) {
  info->input_pool = cptr->data.user.fifo_pool_size;
  info->input_free = info->input_pool;
  info->input_free = snd_seq_fifo_unused_cells(cptr->data.user.fifo);
 } else {
  info->input_pool = 0;
  info->input_free = 0;
 }
 snd_seq_client_unlock(cptr);

 return 0;
}
