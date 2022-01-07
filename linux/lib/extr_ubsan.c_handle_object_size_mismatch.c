
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type_mismatch_data_common {size_t type_check_kind; TYPE_1__* type; int location; } ;
struct TYPE_2__ {int type_name; } ;


 int pr_err (char*,int ,...) ;
 scalar_t__ suppress_report (int ) ;
 int * type_check_kinds ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int ,unsigned long*) ;

__attribute__((used)) static void handle_object_size_mismatch(struct type_mismatch_data_common *data,
     unsigned long ptr)
{
 unsigned long flags;

 if (suppress_report(data->location))
  return;

 ubsan_prologue(data->location, &flags);
 pr_err("%s address %p with insufficient space\n",
  type_check_kinds[data->type_check_kind],
  (void *) ptr);
 pr_err("for an object of type %s\n", data->type->type_name);
 ubsan_epilogue(&flags);
}
