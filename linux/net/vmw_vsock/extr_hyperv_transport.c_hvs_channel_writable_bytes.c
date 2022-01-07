
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmbus_channel {int outbound; } ;


 scalar_t__ HVS_PKT_LEN (int) ;
 scalar_t__ hv_get_bytes_to_write (int *) ;
 size_t round_down (size_t,int) ;

__attribute__((used)) static size_t hvs_channel_writable_bytes(struct vmbus_channel *chan)
{
 u32 writeable = hv_get_bytes_to_write(&chan->outbound);
 size_t ret;





 if (writeable <= HVS_PKT_LEN(1) + HVS_PKT_LEN(0))
  return 0;

 ret = writeable - HVS_PKT_LEN(1) - HVS_PKT_LEN(0);

 return round_down(ret, 8);
}
