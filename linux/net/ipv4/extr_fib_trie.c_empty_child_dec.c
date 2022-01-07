
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {int dummy; } ;
struct TYPE_2__ {int empty_children; int full_children; } ;


 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline void empty_child_dec(struct key_vector *n)
{
 if (!tn_info(n)->empty_children)
  tn_info(n)->full_children--;

 tn_info(n)->empty_children--;
}
