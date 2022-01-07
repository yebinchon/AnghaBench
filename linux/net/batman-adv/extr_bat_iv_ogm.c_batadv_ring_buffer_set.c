
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t BATADV_TQ_GLOBAL_WINDOW_SIZE ;

__attribute__((used)) static void batadv_ring_buffer_set(u8 lq_recv[], u8 *lq_index, u8 value)
{
 lq_recv[*lq_index] = value;
 *lq_index = (*lq_index + 1) % BATADV_TQ_GLOBAL_WINDOW_SIZE;
}
