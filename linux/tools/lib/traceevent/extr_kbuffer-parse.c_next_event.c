
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int (* next_event ) (struct kbuffer*) ;} ;


 int stub1 (struct kbuffer*) ;

__attribute__((used)) static int next_event(struct kbuffer *kbuf)
{
 return kbuf->next_event(kbuf);
}
