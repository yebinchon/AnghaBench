
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {int dummy; } ;
struct TYPE_2__ {int full_children; int empty_children; } ;


 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline void empty_child_inc(struct key_vector *n)
{
 tn_info(n)->empty_children++;

 if (!tn_info(n)->empty_children)
  tn_info(n)->full_children++;
}
