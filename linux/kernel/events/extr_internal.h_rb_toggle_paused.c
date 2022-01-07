
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int paused; scalar_t__ nr_pages; } ;



__attribute__((used)) static inline void rb_toggle_paused(struct ring_buffer *rb, bool pause)
{
 if (!pause && rb->nr_pages)
  rb->paused = 0;
 else
  rb->paused = 1;
}
