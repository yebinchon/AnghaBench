
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sparsebit {scalar_t__ num_set; TYPE_1__* root; } ;
typedef scalar_t__ sparsebit_num_t ;
typedef int mask_t ;
struct TYPE_2__ {scalar_t__ num_after; int mask; } ;


 scalar_t__ MASK_BITS ;
 int assert (int) ;

bool sparsebit_any_set(struct sparsebit *s)
{




 if (!s->root)
  return 0;






 assert(s->root->mask != 0);
 assert(s->num_set > 0 ||
        (s->root->num_after == ((sparsebit_num_t) 0) - MASK_BITS &&
  s->root->mask == ~(mask_t) 0));

 return 1;
}
