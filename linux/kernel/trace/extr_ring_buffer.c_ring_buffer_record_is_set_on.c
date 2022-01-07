
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int record_disabled; } ;


 int RB_BUFFER_OFF ;
 int atomic_read (int *) ;

bool ring_buffer_record_is_set_on(struct ring_buffer *buffer)
{
 return !(atomic_read(&buffer->record_disabled) & RB_BUFFER_OFF);
}
