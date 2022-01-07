
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int record_disabled; } ;


 unsigned int RB_BUFFER_OFF ;
 unsigned int atomic_cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned int atomic_read (int *) ;

void ring_buffer_record_off(struct ring_buffer *buffer)
{
 unsigned int rd;
 unsigned int new_rd;

 do {
  rd = atomic_read(&buffer->record_disabled);
  new_rd = rd | RB_BUFFER_OFF;
 } while (atomic_cmpxchg(&buffer->record_disabled, rd, new_rd) != rd);
}
