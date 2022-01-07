
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {int page_lock; } ;


 int spin_trylock (int *) ;

__attribute__((used)) static inline int z3fold_page_trylock(struct z3fold_header *zhdr)
{
 return spin_trylock(&zhdr->page_lock);
}
