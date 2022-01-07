
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int start; } ;



int kbuffer_start_of_data(struct kbuffer *kbuf)
{
 return kbuf->start;
}
