
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * address_callback; } ;
struct snd_motu {TYPE_1__ async_handler; } ;
typedef int data ;
typedef int __be32 ;


 int ASYNC_ADDR_HI ;
 int ASYNC_ADDR_LO ;
 int cpu_to_be32 (int) ;
 int fw_core_remove_address_handler (TYPE_1__*) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

void snd_motu_transaction_unregister(struct snd_motu *motu)
{
 __be32 data;

 if (motu->async_handler.address_callback != ((void*)0))
  fw_core_remove_address_handler(&motu->async_handler);
 motu->async_handler.address_callback = ((void*)0);


 data = cpu_to_be32(0x00000000);
 snd_motu_transaction_write(motu, ASYNC_ADDR_HI, &data, sizeof(data));
 snd_motu_transaction_write(motu, ASYNC_ADDR_LO, &data, sizeof(data));
}
