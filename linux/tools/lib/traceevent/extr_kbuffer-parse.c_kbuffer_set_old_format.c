
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int next_event; int flags; } ;


 int KBUFFER_FL_OLD_FORMAT ;
 int __old_next_event ;

void kbuffer_set_old_format(struct kbuffer *kbuf)
{
 kbuf->flags |= KBUFFER_FL_OLD_FORMAT;

 kbuf->next_event = __old_next_event;
}
