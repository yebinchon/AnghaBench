
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int next; int curr; } ;



int kbuffer_curr_size(struct kbuffer *kbuf)
{
 return kbuf->next - kbuf->curr;
}
