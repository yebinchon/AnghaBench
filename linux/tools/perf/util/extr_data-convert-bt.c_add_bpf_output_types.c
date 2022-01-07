
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bt_ctf_field_type* u32_hex; struct bt_ctf_field_type* u32; } ;
struct ctf_writer {TYPE_1__ data; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;


 int bt_ctf_event_class_add_field (struct bt_ctf_event_class*,struct bt_ctf_field_type*,char*) ;
 struct bt_ctf_field_type* bt_ctf_field_type_sequence_create (struct bt_ctf_field_type*,char*) ;

__attribute__((used)) static int add_bpf_output_types(struct ctf_writer *cw,
    struct bt_ctf_event_class *class)
{
 struct bt_ctf_field_type *len_type = cw->data.u32;
 struct bt_ctf_field_type *seq_base_type = cw->data.u32_hex;
 struct bt_ctf_field_type *seq_type;
 int ret;

 ret = bt_ctf_event_class_add_field(class, len_type, "raw_len");
 if (ret)
  return ret;

 seq_type = bt_ctf_field_type_sequence_create(seq_base_type, "raw_len");
 if (!seq_type)
  return -1;

 return bt_ctf_event_class_add_field(class, seq_type, "raw_data");
}
