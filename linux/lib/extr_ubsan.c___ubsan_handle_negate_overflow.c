
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct overflow_data {TYPE_1__* type; int location; } ;
typedef int old_val_str ;
struct TYPE_2__ {int type_name; } ;


 int VALUE_LENGTH ;
 int pr_err (char*,char*,int ) ;
 scalar_t__ suppress_report (int *) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 int val_to_string (char*,int,TYPE_1__*,void*) ;

void __ubsan_handle_negate_overflow(struct overflow_data *data,
    void *old_val)
{
 unsigned long flags;
 char old_val_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(old_val_str, sizeof(old_val_str), data->type, old_val);

 pr_err("negation of %s cannot be represented in type %s:\n",
  old_val_str, data->type->type_name);

 ubsan_epilogue(&flags);
}
