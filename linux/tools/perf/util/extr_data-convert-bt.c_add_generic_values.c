
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_sample {int transaction; int data_src; int weight; int period; int stream_id; int id; int pid; int tid; int ip; } ;
struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct ctf_writer {int dummy; } ;
struct bt_ctf_event {int dummy; } ;


 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TRANSACTION ;
 int PERF_SAMPLE_WEIGHT ;
 int value_set_s32 (struct ctf_writer*,struct bt_ctf_event*,char*,int ) ;
 int value_set_u64 (struct ctf_writer*,struct bt_ctf_event*,char*,int ) ;
 int value_set_u64_hex (struct ctf_writer*,struct bt_ctf_event*,char*,int ) ;

__attribute__((used)) static int add_generic_values(struct ctf_writer *cw,
         struct bt_ctf_event *event,
         struct evsel *evsel,
         struct perf_sample *sample)
{
 u64 type = evsel->core.attr.sample_type;
 int ret;
 if (type & PERF_SAMPLE_IP) {
  ret = value_set_u64_hex(cw, event, "perf_ip", sample->ip);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_TID) {
  ret = value_set_s32(cw, event, "perf_tid", sample->tid);
  if (ret)
   return -1;

  ret = value_set_s32(cw, event, "perf_pid", sample->pid);
  if (ret)
   return -1;
 }

 if ((type & PERF_SAMPLE_ID) ||
     (type & PERF_SAMPLE_IDENTIFIER)) {
  ret = value_set_u64(cw, event, "perf_id", sample->id);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_STREAM_ID) {
  ret = value_set_u64(cw, event, "perf_stream_id", sample->stream_id);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_PERIOD) {
  ret = value_set_u64(cw, event, "perf_period", sample->period);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_WEIGHT) {
  ret = value_set_u64(cw, event, "perf_weight", sample->weight);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_DATA_SRC) {
  ret = value_set_u64(cw, event, "perf_data_src",
    sample->data_src);
  if (ret)
   return -1;
 }

 if (type & PERF_SAMPLE_TRANSACTION) {
  ret = value_set_u64(cw, event, "perf_transaction",
    sample->transaction);
  if (ret)
   return -1;
 }

 return 0;
}
