
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int * compressed; int * feature; int * time_conv; int * stat_round; int * stat; int * stat_config; int * cpu_map; int * thread_map; int * auxtrace_error; int * auxtrace; int * auxtrace_info; int * id_index; int * finished_round; scalar_t__ ordered_events; int * build_id; int * tracing_data; int * event_update; int * attr; int * unthrottle; int * throttle; int * read; int * bpf; int * ksymbol; int * context_switch; int * itrace_start; int * aux; int * lost_samples; int * lost; int * exit; int * fork; int * namespaces; int * comm; int * mmap2; int * mmap; int * sample; } ;


 int * perf_event__process_aux ;
 int * perf_event__process_bpf ;
 int * perf_event__process_itrace_start ;
 int * perf_event__process_ksymbol ;
 int * perf_event__process_lost ;
 int * perf_event__process_lost_samples ;
 int * perf_event__process_switch ;
 int * perf_session__process_compressed_event ;
 int * process_event_auxtrace_stub ;
 int * process_event_cpu_map_stub ;
 void* process_event_op2_stub ;
 void* process_event_sample_stub ;
 int * process_event_stat_config_stub ;
 void* process_event_stub ;
 int * process_event_synth_attr_stub ;
 int * process_event_synth_event_update_stub ;
 int * process_event_synth_tracing_data_stub ;
 int * process_event_thread_map_stub ;
 int * process_finished_round ;
 int * process_finished_round_stub ;
 int * process_stat_round_stub ;
 int * process_stat_stub ;

void perf_tool__fill_defaults(struct perf_tool *tool)
{
 if (tool->sample == ((void*)0))
  tool->sample = process_event_sample_stub;
 if (tool->mmap == ((void*)0))
  tool->mmap = process_event_stub;
 if (tool->mmap2 == ((void*)0))
  tool->mmap2 = process_event_stub;
 if (tool->comm == ((void*)0))
  tool->comm = process_event_stub;
 if (tool->namespaces == ((void*)0))
  tool->namespaces = process_event_stub;
 if (tool->fork == ((void*)0))
  tool->fork = process_event_stub;
 if (tool->exit == ((void*)0))
  tool->exit = process_event_stub;
 if (tool->lost == ((void*)0))
  tool->lost = perf_event__process_lost;
 if (tool->lost_samples == ((void*)0))
  tool->lost_samples = perf_event__process_lost_samples;
 if (tool->aux == ((void*)0))
  tool->aux = perf_event__process_aux;
 if (tool->itrace_start == ((void*)0))
  tool->itrace_start = perf_event__process_itrace_start;
 if (tool->context_switch == ((void*)0))
  tool->context_switch = perf_event__process_switch;
 if (tool->ksymbol == ((void*)0))
  tool->ksymbol = perf_event__process_ksymbol;
 if (tool->bpf == ((void*)0))
  tool->bpf = perf_event__process_bpf;
 if (tool->read == ((void*)0))
  tool->read = process_event_sample_stub;
 if (tool->throttle == ((void*)0))
  tool->throttle = process_event_stub;
 if (tool->unthrottle == ((void*)0))
  tool->unthrottle = process_event_stub;
 if (tool->attr == ((void*)0))
  tool->attr = process_event_synth_attr_stub;
 if (tool->event_update == ((void*)0))
  tool->event_update = process_event_synth_event_update_stub;
 if (tool->tracing_data == ((void*)0))
  tool->tracing_data = process_event_synth_tracing_data_stub;
 if (tool->build_id == ((void*)0))
  tool->build_id = process_event_op2_stub;
 if (tool->finished_round == ((void*)0)) {
  if (tool->ordered_events)
   tool->finished_round = process_finished_round;
  else
   tool->finished_round = process_finished_round_stub;
 }
 if (tool->id_index == ((void*)0))
  tool->id_index = process_event_op2_stub;
 if (tool->auxtrace_info == ((void*)0))
  tool->auxtrace_info = process_event_op2_stub;
 if (tool->auxtrace == ((void*)0))
  tool->auxtrace = process_event_auxtrace_stub;
 if (tool->auxtrace_error == ((void*)0))
  tool->auxtrace_error = process_event_op2_stub;
 if (tool->thread_map == ((void*)0))
  tool->thread_map = process_event_thread_map_stub;
 if (tool->cpu_map == ((void*)0))
  tool->cpu_map = process_event_cpu_map_stub;
 if (tool->stat_config == ((void*)0))
  tool->stat_config = process_event_stat_config_stub;
 if (tool->stat == ((void*)0))
  tool->stat = process_stat_stub;
 if (tool->stat_round == ((void*)0))
  tool->stat_round = process_stat_round_stub;
 if (tool->time_conv == ((void*)0))
  tool->time_conv = process_event_op2_stub;
 if (tool->feature == ((void*)0))
  tool->feature = process_event_op2_stub;
 if (tool->compressed == ((void*)0))
  tool->compressed = perf_session__process_compressed_event;
}
