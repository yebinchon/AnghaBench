
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 int rcu_assign_pointer (int ,struct key_vector*) ;
 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline void node_set_parent(struct key_vector *n, struct key_vector *tp)
{
 if (n)
  rcu_assign_pointer(tn_info(n)->parent, tp);
}
