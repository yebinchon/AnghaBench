
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int dummy; } ;
struct page {int dummy; } ;


 int BUILD_BUG () ;

__attribute__((used)) static vm_fault_t do_set_pmd(struct vm_fault *vmf, struct page *page)
{
 BUILD_BUG();
 return 0;
}
