
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int nr_events_printed; int output; } ;
struct perf_sample {int raw_size; int raw_data; } ;


 int binary__fprintf (int ,int ,int,int ,int *,int ) ;
 int bpf_output__printer ;

__attribute__((used)) static void bpf_output__fprintf(struct trace *trace,
    struct perf_sample *sample)
{
 binary__fprintf(sample->raw_data, sample->raw_size, 8,
   bpf_output__printer, ((void*)0), trace->output);
 ++trace->nr_events_printed;
}
