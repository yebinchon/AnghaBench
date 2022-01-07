
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int * callback_data; } ;
struct snd_motu {TYPE_1__ async_handler; int unit; } ;
struct fw_device {TYPE_2__* card; } ;
typedef int data ;
typedef int __be32 ;
struct TYPE_4__ {int node_id; } ;


 int ASYNC_ADDR_HI ;
 int ASYNC_ADDR_LO ;
 int EINVAL ;
 int cpu_to_be32 (int) ;
 struct fw_device* fw_parent_device (int ) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

int snd_motu_transaction_reregister(struct snd_motu *motu)
{
 struct fw_device *device = fw_parent_device(motu->unit);
 __be32 data;
 int err;

 if (motu->async_handler.callback_data == ((void*)0))
  return -EINVAL;


 data = cpu_to_be32((device->card->node_id << 16) |
      (motu->async_handler.offset >> 32));
 err = snd_motu_transaction_write(motu, ASYNC_ADDR_HI, &data,
      sizeof(data));
 if (err < 0)
  return err;

 data = cpu_to_be32(motu->async_handler.offset);
 return snd_motu_transaction_write(motu, ASYNC_ADDR_LO, &data,
       sizeof(data));
}
