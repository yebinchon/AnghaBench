
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;


 int HVS_PKT_LEN (int ) ;
 int HVS_SEND_BUF_SIZE ;
 int set_channel_pending_send_size (struct vmbus_channel*,int ) ;
 int virt_mb () ;

__attribute__((used)) static void hvs_set_channel_pending_send_size(struct vmbus_channel *chan)
{
 set_channel_pending_send_size(chan,
          HVS_PKT_LEN(HVS_SEND_BUF_SIZE));

 virt_mb();
}
