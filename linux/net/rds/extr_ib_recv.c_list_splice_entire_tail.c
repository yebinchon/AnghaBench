
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; } ;


 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_splice_tail (struct list_head*,struct list_head*) ;

__attribute__((used)) static void list_splice_entire_tail(struct list_head *from,
        struct list_head *to)
{
 struct list_head *from_last = from->prev;

 list_splice_tail(from_last, to);
 list_add_tail(from_last, to);
}
