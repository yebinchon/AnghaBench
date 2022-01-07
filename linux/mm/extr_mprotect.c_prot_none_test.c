
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {int dummy; } ;



__attribute__((used)) static int prot_none_test(unsigned long addr, unsigned long next,
     struct mm_walk *walk)
{
 return 0;
}
