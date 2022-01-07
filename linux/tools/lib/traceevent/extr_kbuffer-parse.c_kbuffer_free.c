
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int dummy; } ;


 int free (struct kbuffer*) ;

void kbuffer_free(struct kbuffer *kbuf)
{
 free(kbuf);
}
