
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int * buf; } ;


 int kfree (int *) ;

void line6_midibuf_destroy(struct midi_buffer *this)
{
 kfree(this->buf);
 this->buf = ((void*)0);
}
