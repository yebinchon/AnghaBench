
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_mismatch_data_v1 {unsigned long log_alignment; int type_check_kind; int type; int location; } ;
struct type_mismatch_data_common {unsigned long alignment; int type_check_kind; int type; int * location; } ;


 int ubsan_type_mismatch_common (struct type_mismatch_data_common*,unsigned long) ;

void __ubsan_handle_type_mismatch_v1(struct type_mismatch_data_v1 *data,
    void *ptr)
{

 struct type_mismatch_data_common common_data = {
  .location = &data->location,
  .type = data->type,
  .alignment = 1UL << data->log_alignment,
  .type_check_kind = data->type_check_kind
 };

 ubsan_type_mismatch_common(&common_data, (unsigned long)ptr);
}
