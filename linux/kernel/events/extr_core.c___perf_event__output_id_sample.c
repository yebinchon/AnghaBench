
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sample_data {int type; int id; int cpu_entry; int stream_id; int time; int tid_entry; } ;
struct perf_output_handle {int dummy; } ;


 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 int perf_output_put (struct perf_output_handle*,int ) ;

__attribute__((used)) static void __perf_event__output_id_sample(struct perf_output_handle *handle,
        struct perf_sample_data *data)
{
 u64 sample_type = data->type;

 if (sample_type & PERF_SAMPLE_TID)
  perf_output_put(handle, data->tid_entry);

 if (sample_type & PERF_SAMPLE_TIME)
  perf_output_put(handle, data->time);

 if (sample_type & PERF_SAMPLE_ID)
  perf_output_put(handle, data->id);

 if (sample_type & PERF_SAMPLE_STREAM_ID)
  perf_output_put(handle, data->stream_id);

 if (sample_type & PERF_SAMPLE_CPU)
  perf_output_put(handle, data->cpu_entry);

 if (sample_type & PERF_SAMPLE_IDENTIFIER)
  perf_output_put(handle, data->id);
}
