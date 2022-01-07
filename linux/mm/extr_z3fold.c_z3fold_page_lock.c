
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {int page_lock; } ;


 int spin_lock (int *) ;

__attribute__((used)) static inline void z3fold_page_lock(struct z3fold_header *zhdr)
{
 spin_lock(&zhdr->page_lock);
}
