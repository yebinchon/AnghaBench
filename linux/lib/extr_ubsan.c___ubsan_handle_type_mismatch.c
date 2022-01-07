
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_mismatch_data_common {int type_check_kind; int alignment; int type; int * location; } ;
struct type_mismatch_data {int type_check_kind; int alignment; int type; int location; } ;


 int ubsan_type_mismatch_common (struct type_mismatch_data_common*,unsigned long) ;

void __ubsan_handle_type_mismatch(struct type_mismatch_data *data,
    void *ptr)
{
 struct type_mismatch_data_common common_data = {
  .location = &data->location,
  .type = data->type,
  .alignment = data->alignment,
  .type_check_kind = data->type_check_kind
 };

 ubsan_type_mismatch_common(&common_data, (unsigned long)ptr);
}
