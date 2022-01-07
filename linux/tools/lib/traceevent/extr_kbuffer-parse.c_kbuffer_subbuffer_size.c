
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int size; } ;



int kbuffer_subbuffer_size(struct kbuffer *kbuf)
{
 return kbuf->size;
}
