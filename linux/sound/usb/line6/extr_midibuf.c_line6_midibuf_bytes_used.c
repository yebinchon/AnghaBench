
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int pos_write; int pos_read; int size; } ;


 scalar_t__ midibuf_is_empty (struct midi_buffer*) ;

int line6_midibuf_bytes_used(struct midi_buffer *this)
{
 return
     midibuf_is_empty(this) ?
     0 :
     (this->pos_write - this->pos_read + this->size - 1) % this->size +
     1;
}
