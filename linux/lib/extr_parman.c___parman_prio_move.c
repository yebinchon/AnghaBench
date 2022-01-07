
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parman_prio {int dummy; } ;
struct parman_item {int index; } ;
struct parman {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* move ) (int ,int ,unsigned long,unsigned long) ;} ;


 int stub1 (int ,int ,unsigned long,unsigned long) ;

__attribute__((used)) static void __parman_prio_move(struct parman *parman, struct parman_prio *prio,
          struct parman_item *item, unsigned long to_index,
          unsigned long count)
{
 parman->ops->move(parman->priv, item->index, to_index, count);
}
