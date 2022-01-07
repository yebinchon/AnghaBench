
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmbus_channel {int inbound; } ;


 scalar_t__ HVS_PKT_LEN (int ) ;
 scalar_t__ hv_get_bytes_to_read (int *) ;

__attribute__((used)) static bool hvs_channel_readable(struct vmbus_channel *chan)
{
 u32 readable = hv_get_bytes_to_read(&chan->inbound);


 return readable >= HVS_PKT_LEN(0);
}
