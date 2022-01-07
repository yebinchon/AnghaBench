
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_descriptor {int type_name; } ;
struct overflow_data {int location; struct type_descriptor* type; } ;
typedef int rhs_val_str ;
typedef int lhs_val_str ;


 int VALUE_LENGTH ;
 int pr_err (char*,char*,...) ;
 scalar_t__ suppress_report (int *) ;
 scalar_t__ type_is_signed (struct type_descriptor*) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 int val_to_string (char*,int,struct type_descriptor*,void*) ;

__attribute__((used)) static void handle_overflow(struct overflow_data *data, void *lhs,
   void *rhs, char op)
{

 struct type_descriptor *type = data->type;
 unsigned long flags;
 char lhs_val_str[VALUE_LENGTH];
 char rhs_val_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(lhs_val_str, sizeof(lhs_val_str), type, lhs);
 val_to_string(rhs_val_str, sizeof(rhs_val_str), type, rhs);
 pr_err("%s integer overflow:\n",
  type_is_signed(type) ? "signed" : "unsigned");
 pr_err("%s %c %s cannot be represented in type %s\n",
  lhs_val_str,
  op,
  rhs_val_str,
  type->type_name);

 ubsan_epilogue(&flags);
}
