
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct ipc_message {TYPE_1__ tx; } ;


 int memcpy (int ,char*,size_t) ;

void skl_ipc_tx_data_copy(struct ipc_message *msg, char *tx_data,
  size_t tx_size)
{
 if (tx_size)
  memcpy(msg->tx.data, tx_data, tx_size);
}
