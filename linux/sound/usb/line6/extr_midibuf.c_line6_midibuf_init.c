
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int size; int split; int * buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int line6_midibuf_reset (struct midi_buffer*) ;

int line6_midibuf_init(struct midi_buffer *this, int size, int split)
{
 this->buf = kmalloc(size, GFP_KERNEL);

 if (this->buf == ((void*)0))
  return -ENOMEM;

 this->size = size;
 this->split = split;
 line6_midibuf_reset(this);
 return 0;
}
