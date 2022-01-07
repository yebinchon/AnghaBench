
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val_str ;
struct invalid_value_data {TYPE_1__* type; int location; } ;
struct TYPE_2__ {int type_name; } ;


 int VALUE_LENGTH ;
 int pr_err (char*,char*,int ) ;
 scalar_t__ suppress_report (int *) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 int val_to_string (char*,int,TYPE_1__*,void*) ;

void __ubsan_handle_load_invalid_value(struct invalid_value_data *data,
    void *val)
{
 unsigned long flags;
 char val_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(val_str, sizeof(val_str), data->type, val);

 pr_err("load of value %s is not a valid value for type %s\n",
  val_str, data->type->type_name);

 ubsan_epilogue(&flags);
}
