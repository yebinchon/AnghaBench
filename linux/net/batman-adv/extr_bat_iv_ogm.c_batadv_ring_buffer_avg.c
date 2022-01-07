
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ BATADV_TQ_GLOBAL_WINDOW_SIZE ;

__attribute__((used)) static u8 batadv_ring_buffer_avg(const u8 lq_recv[])
{
 const u8 *ptr;
 u16 count = 0;
 u16 i = 0;
 u16 sum = 0;

 ptr = lq_recv;

 while (i < BATADV_TQ_GLOBAL_WINDOW_SIZE) {
  if (*ptr != 0) {
   count++;
   sum += *ptr;
  }

  i++;
  ptr++;
 }

 if (count == 0)
  return 0;

 return (u8)(sum / count);
}
