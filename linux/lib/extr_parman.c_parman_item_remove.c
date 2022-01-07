
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parman_prio {int dummy; } ;
struct parman_item {int dummy; } ;
struct parman {TYPE_1__* algo; } ;
struct TYPE_2__ {int (* item_remove ) (struct parman*,struct parman_prio*,struct parman_item*) ;} ;


 int stub1 (struct parman*,struct parman_prio*,struct parman_item*) ;

void parman_item_remove(struct parman *parman, struct parman_prio *prio,
   struct parman_item *item)
{
 parman->algo->item_remove(parman, prio, item);
}
