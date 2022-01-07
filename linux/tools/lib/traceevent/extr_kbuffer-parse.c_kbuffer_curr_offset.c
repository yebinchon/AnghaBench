
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int curr; int start; } ;



int kbuffer_curr_offset(struct kbuffer *kbuf)
{
 return kbuf->curr + kbuf->start;
}
