
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* prev; } ;
struct buffer_page {TYPE_2__ list; } ;
struct TYPE_3__ {int next; } ;


 unsigned long RB_FLAG_MASK ;
 unsigned long RB_PAGE_HEAD ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static int rb_head_page_replace(struct buffer_page *old,
    struct buffer_page *new)
{
 unsigned long *ptr = (unsigned long *)&old->list.prev->next;
 unsigned long val;
 unsigned long ret;

 val = *ptr & ~RB_FLAG_MASK;
 val |= RB_PAGE_HEAD;

 ret = cmpxchg(ptr, val, (unsigned long)&new->list);

 return ret == val;
}
