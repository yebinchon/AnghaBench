
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int header; int size; scalar_t__ data; } ;
struct ipc_message {TYPE_1__ tx; } ;


 int memcpy (scalar_t__,char*,size_t) ;

__attribute__((used)) static void byt_tx_data_copy(struct ipc_message *msg, char *tx_data,
 size_t tx_size)
{

 *(u32 *)msg->tx.data = (u32)(msg->tx.header & (u32)-1);
 memcpy(msg->tx.data + sizeof(u32), tx_data, tx_size);
 msg->tx.size += sizeof(u32);
}
