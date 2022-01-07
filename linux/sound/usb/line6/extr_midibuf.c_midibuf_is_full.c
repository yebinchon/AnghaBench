
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int full; } ;



__attribute__((used)) static int midibuf_is_full(struct midi_buffer *this)
{
 return this->full;
}
