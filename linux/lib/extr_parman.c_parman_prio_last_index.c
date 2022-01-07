
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parman_prio {int dummy; } ;
struct TYPE_2__ {unsigned long index; } ;


 TYPE_1__* parman_prio_last_item (struct parman_prio*) ;

__attribute__((used)) static unsigned long parman_prio_last_index(struct parman_prio *prio)
{
 return parman_prio_last_item(prio)->index;
}
