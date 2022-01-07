
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {scalar_t__ data; } ;



__attribute__((used)) static int calc_index(struct kbuffer *kbuf, void *ptr)
{
 return (unsigned long)ptr - (unsigned long)kbuf->data;
}
