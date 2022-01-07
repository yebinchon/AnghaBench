
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct overflow_data {TYPE_1__* type; int location; } ;
typedef int rhs_val_str ;
struct TYPE_4__ {int type_name; } ;


 int VALUE_LENGTH ;
 int get_signed_val (TYPE_1__*,void*) ;
 int pr_err (char*,...) ;
 scalar_t__ suppress_report (int *) ;
 scalar_t__ type_is_signed (TYPE_1__*) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 int val_to_string (char*,int,TYPE_1__*,void*) ;

void __ubsan_handle_divrem_overflow(struct overflow_data *data,
    void *lhs, void *rhs)
{
 unsigned long flags;
 char rhs_val_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(rhs_val_str, sizeof(rhs_val_str), data->type, rhs);

 if (type_is_signed(data->type) && get_signed_val(data->type, rhs) == -1)
  pr_err("division of %s by -1 cannot be represented in type %s\n",
   rhs_val_str, data->type->type_name);
 else
  pr_err("division by zero\n");

 ubsan_epilogue(&flags);
}
