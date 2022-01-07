
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {unsigned long first_num; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 unsigned long BUDDY_MASK ;
 int PAGE_HEADLESS ;
 unsigned long PAGE_MASK ;
 int WARN_ON (unsigned long) ;

__attribute__((used)) static enum buddy handle_to_buddy(unsigned long handle)
{
 struct z3fold_header *zhdr;
 unsigned long addr;

 WARN_ON(handle & (1 << PAGE_HEADLESS));
 addr = *(unsigned long *)handle;
 zhdr = (struct z3fold_header *)(addr & PAGE_MASK);
 return (addr - zhdr->first_num) & BUDDY_MASK;
}
