
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int pgd_ERROR (int ) ;
 int pgd_clear (int *) ;

void pgd_clear_bad(pgd_t *pgd)
{
 pgd_ERROR(*pgd);
 pgd_clear(pgd);
}
