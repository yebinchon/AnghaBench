
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int pos_read; int size; scalar_t__ full; } ;


 int line6_midibuf_bytes_used (struct midi_buffer*) ;

int line6_midibuf_ignore(struct midi_buffer *this, int length)
{
 int bytes_used = line6_midibuf_bytes_used(this);

 if (length > bytes_used)
  length = bytes_used;

 this->pos_read = (this->pos_read + length) % this->size;
 this->full = 0;
 return length;
}
