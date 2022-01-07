
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; scalar_t__ node; } ;
struct btree_geo {int dummy; } ;


 size_t __btree_for_each (struct btree_head*,struct btree_geo*,scalar_t__,unsigned long,void (*) (void*,unsigned long,unsigned long*,size_t,void*),void*,int ,int ,int ) ;
 void empty (void*,unsigned long,unsigned long*,size_t,void*) ;

size_t btree_visitor(struct btree_head *head, struct btree_geo *geo,
       unsigned long opaque,
       void (*func)(void *elem, unsigned long opaque,
           unsigned long *key,
           size_t index, void *func2),
       void *func2)
{
 size_t count = 0;

 if (!func2)
  func = empty;
 if (head->node)
  count = __btree_for_each(head, geo, head->node, opaque, func,
    func2, 0, head->height, 0);
 return count;
}
