
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int * ls_lvb_bits; scalar_t__ ls_recover_size; int * ls_recover_result; int * ls_recover_submit; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_recover_size(struct lm_lockstruct *ls)
{
 kfree(ls->ls_lvb_bits);
 kfree(ls->ls_recover_submit);
 kfree(ls->ls_recover_result);
 ls->ls_recover_submit = ((void*)0);
 ls->ls_recover_result = ((void*)0);
 ls->ls_recover_size = 0;
 ls->ls_lvb_bits = ((void*)0);
}
