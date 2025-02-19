
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {int dummy; } ;


 int PAGE_HEADLESS ;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline struct z3fold_header *handle_to_z3fold_header(unsigned long h)
{
 unsigned long addr = h;

 if (!(addr & (1 << PAGE_HEADLESS)))
  addr = *(unsigned long *)h;

 return (struct z3fold_header *)(addr & PAGE_MASK);
}
