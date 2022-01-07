
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_field {int flags; struct hist_field** operands; } ;


 int HIST_FIELD_FL_VAR_REF ;
 unsigned int HIST_FIELD_OPERANDS_MAX ;
 int __destroy_hist_field (struct hist_field*) ;

__attribute__((used)) static void destroy_hist_field(struct hist_field *hist_field,
          unsigned int level)
{
 unsigned int i;

 if (level > 3)
  return;

 if (!hist_field)
  return;

 if (hist_field->flags & HIST_FIELD_FL_VAR_REF)
  return;

 for (i = 0; i < HIST_FIELD_OPERANDS_MAX; i++)
  destroy_hist_field(hist_field->operands[i], level + 1);

 __destroy_hist_field(hist_field);
}
