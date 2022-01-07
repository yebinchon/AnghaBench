
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int pgprot_modify (int ,int ) ;
 int vm_get_page_prot (unsigned long) ;

__attribute__((used)) static pgprot_t vm_pgprot_modify(pgprot_t oldprot, unsigned long vm_flags)
{
 return pgprot_modify(oldprot, vm_get_page_prot(vm_flags));
}
