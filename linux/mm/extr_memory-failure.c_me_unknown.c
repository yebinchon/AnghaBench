
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MF_FAILED ;
 int pr_err (char*,unsigned long) ;

__attribute__((used)) static int me_unknown(struct page *p, unsigned long pfn)
{
 pr_err("Memory failure: %#lx: Unknown page state\n", pfn);
 return MF_FAILED;
}
