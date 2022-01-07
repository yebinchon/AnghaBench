
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_func {struct klp_func* old_name; } ;


 int kfree (struct klp_func*) ;

__attribute__((used)) static void klp_free_func_nop(struct klp_func *func)
{
 kfree(func->old_name);
 kfree(func);
}
