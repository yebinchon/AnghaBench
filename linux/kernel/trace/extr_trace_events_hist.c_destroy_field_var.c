
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_var {int val; int var; } ;


 int destroy_hist_field (int ,int ) ;
 int kfree (struct field_var*) ;

__attribute__((used)) static void destroy_field_var(struct field_var *field_var)
{
 if (!field_var)
  return;

 destroy_hist_field(field_var->var, 0);
 destroy_hist_field(field_var->val, 0);

 kfree(field_var);
}
