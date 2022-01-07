
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int p; } ;


 int MAX_ARG_PAGES ;
 int PAGE_SIZE ;

__attribute__((used)) static int __bprm_mm_init(struct linux_binprm *bprm)
{
 bprm->p = PAGE_SIZE * MAX_ARG_PAGES - sizeof(void *);
 return 0;
}
