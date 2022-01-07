
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int type_name; } ;
struct shift_out_of_bounds_data {int location; struct type_descriptor* lhs_type; struct type_descriptor* rhs_type; } ;
typedef int rhs_str ;
typedef int lhs_str ;


 int VALUE_LENGTH ;
 scalar_t__ get_unsigned_val (struct type_descriptor*,void*) ;
 int pr_err (char*,char*,...) ;
 scalar_t__ suppress_report (int *) ;
 char* type_bit_width (struct type_descriptor*) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 scalar_t__ val_is_negative (struct type_descriptor*,void*) ;
 int val_to_string (char*,int,struct type_descriptor*,void*) ;

void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *data,
     void *lhs, void *rhs)
{
 unsigned long flags;
 struct type_descriptor *rhs_type = data->rhs_type;
 struct type_descriptor *lhs_type = data->lhs_type;
 char rhs_str[VALUE_LENGTH];
 char lhs_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(rhs_str, sizeof(rhs_str), rhs_type, rhs);
 val_to_string(lhs_str, sizeof(lhs_str), lhs_type, lhs);

 if (val_is_negative(rhs_type, rhs))
  pr_err("shift exponent %s is negative\n", rhs_str);

 else if (get_unsigned_val(rhs_type, rhs) >=
  type_bit_width(lhs_type))
  pr_err("shift exponent %s is too large for %u-bit type %s\n",
   rhs_str,
   type_bit_width(lhs_type),
   lhs_type->type_name);
 else if (val_is_negative(lhs_type, lhs))
  pr_err("left shift of negative value %s\n",
   lhs_str);
 else
  pr_err("left shift of %s by %s places cannot be"
   " represented in type %s\n",
   lhs_str, rhs_str,
   lhs_type->type_name);

 ubsan_epilogue(&flags);
}
