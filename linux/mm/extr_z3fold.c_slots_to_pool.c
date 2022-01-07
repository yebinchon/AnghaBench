
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int dummy; } ;
struct z3fold_buddy_slots {int pool; } ;


 int HANDLE_FLAG_MASK ;

__attribute__((used)) static inline struct z3fold_pool *slots_to_pool(struct z3fold_buddy_slots *s)
{
 return (struct z3fold_pool *)(s->pool & ~HANDLE_FLAG_MASK);
}
