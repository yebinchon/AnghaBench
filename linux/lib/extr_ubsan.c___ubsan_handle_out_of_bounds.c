
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct out_of_bounds_data {TYPE_1__* array_type; int index_type; int location; } ;
typedef int index_str ;
struct TYPE_2__ {int type_name; } ;


 int VALUE_LENGTH ;
 int pr_err (char*,char*,int ) ;
 scalar_t__ suppress_report (int *) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;
 int val_to_string (char*,int,int ,void*) ;

void __ubsan_handle_out_of_bounds(struct out_of_bounds_data *data, void *index)
{
 unsigned long flags;
 char index_str[VALUE_LENGTH];

 if (suppress_report(&data->location))
  return;

 ubsan_prologue(&data->location, &flags);

 val_to_string(index_str, sizeof(index_str), data->index_type, index);
 pr_err("index %s is out of range for type %s\n", index_str,
  data->array_type->type_name);
 ubsan_epilogue(&flags);
}
