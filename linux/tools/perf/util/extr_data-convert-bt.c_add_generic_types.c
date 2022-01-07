
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int sample_type; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_6__ {int u64_hex; int u32; int u64; int s32; } ;
struct ctf_writer {TYPE_3__ data; } ;
struct bt_ctf_event_class {int dummy; } ;


 int ADD_FIELD (struct bt_ctf_event_class*,int ,char*) ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TRANSACTION ;
 int PERF_SAMPLE_WEIGHT ;
 int bt_ctf_field_type_sequence_create (int ,char*) ;

__attribute__((used)) static int add_generic_types(struct ctf_writer *cw, struct evsel *evsel,
        struct bt_ctf_event_class *event_class)
{
 u64 type = evsel->core.attr.sample_type;
 if (type & PERF_SAMPLE_IP)
  do { pr2("  field '%s'\n", "perf_ip"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64_hex, "perf_ip")) { pr_err("Failed to add field '%s';\n", "perf_ip"); return -1; } } while (0);

 if (type & PERF_SAMPLE_TID) {
  do { pr2("  field '%s'\n", "perf_tid"); if (bt_ctf_event_class_add_field(event_class, cw->data.s32, "perf_tid")) { pr_err("Failed to add field '%s';\n", "perf_tid"); return -1; } } while (0);
  do { pr2("  field '%s'\n", "perf_pid"); if (bt_ctf_event_class_add_field(event_class, cw->data.s32, "perf_pid")) { pr_err("Failed to add field '%s';\n", "perf_pid"); return -1; } } while (0);
 }

 if ((type & PERF_SAMPLE_ID) ||
     (type & PERF_SAMPLE_IDENTIFIER))
  do { pr2("  field '%s'\n", "perf_id"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_id")) { pr_err("Failed to add field '%s';\n", "perf_id"); return -1; } } while (0);

 if (type & PERF_SAMPLE_STREAM_ID)
  do { pr2("  field '%s'\n", "perf_stream_id"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_stream_id")) { pr_err("Failed to add field '%s';\n", "perf_stream_id"); return -1; } } while (0);

 if (type & PERF_SAMPLE_PERIOD)
  do { pr2("  field '%s'\n", "perf_period"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_period")) { pr_err("Failed to add field '%s';\n", "perf_period"); return -1; } } while (0);

 if (type & PERF_SAMPLE_WEIGHT)
  do { pr2("  field '%s'\n", "perf_weight"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_weight")) { pr_err("Failed to add field '%s';\n", "perf_weight"); return -1; } } while (0);

 if (type & PERF_SAMPLE_DATA_SRC)
  do { pr2("  field '%s'\n", "perf_data_src"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_data_src")) { pr_err("Failed to add field '%s';\n", "perf_data_src"); return -1; } } while (0);

 if (type & PERF_SAMPLE_TRANSACTION)
  do { pr2("  field '%s'\n", "perf_transaction"); if (bt_ctf_event_class_add_field(event_class, cw->data.u64, "perf_transaction")) { pr_err("Failed to add field '%s';\n", "perf_transaction"); return -1; } } while (0);

 if (type & PERF_SAMPLE_CALLCHAIN) {
  do { pr2("  field '%s'\n", "perf_callchain_size"); if (bt_ctf_event_class_add_field(event_class, cw->data.u32, "perf_callchain_size")) { pr_err("Failed to add field '%s';\n", "perf_callchain_size"); return -1; } } while (0);
  do { pr2("  field '%s'\n", "perf_callchain"); if (bt_ctf_event_class_add_field(event_class, bt_ctf_field_type_sequence_create( cw->data.u64_hex, "perf_callchain_size"), "perf_callchain")) { pr_err("Failed to add field '%s';\n", "perf_callchain"); return -1; } } while (0);



 }


 return 0;
}
