
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct hist_field* name; } ;
struct hist_field {struct hist_field* type; struct hist_field* name; TYPE_1__ var; } ;


 int kfree (struct hist_field*) ;

__attribute__((used)) static void __destroy_hist_field(struct hist_field *hist_field)
{
 kfree(hist_field->var.name);
 kfree(hist_field->name);
 kfree(hist_field->type);

 kfree(hist_field);
}
