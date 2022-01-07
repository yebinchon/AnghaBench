
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parman_prio {int dummy; } ;
struct parman_item {int dummy; } ;
struct parman {TYPE_1__* algo; } ;
struct TYPE_2__ {int (* item_add ) (struct parman*,struct parman_prio*,struct parman_item*) ;} ;


 int stub1 (struct parman*,struct parman_prio*,struct parman_item*) ;

int parman_item_add(struct parman *parman, struct parman_prio *prio,
      struct parman_item *item)
{
 return parman->algo->item_add(parman, prio, item);
}
