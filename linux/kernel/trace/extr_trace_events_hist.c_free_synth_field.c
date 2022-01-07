
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_field {struct synth_field* name; struct synth_field* type; } ;


 int kfree (struct synth_field*) ;

__attribute__((used)) static void free_synth_field(struct synth_field *field)
{
 kfree(field->type);
 kfree(field->name);
 kfree(field);
}
