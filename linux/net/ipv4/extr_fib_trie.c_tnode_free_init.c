
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key_vector {int dummy; } ;
struct TYPE_3__ {int * next; } ;
struct TYPE_4__ {TYPE_1__ rcu; } ;


 TYPE_2__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline void tnode_free_init(struct key_vector *tn)
{
 tn_info(tn)->rcu.next = ((void*)0);
}
