
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int per_thread; scalar_t__ default_per_cpu; } ;
struct record_opts {scalar_t__ user_freq; scalar_t__ user_interval; int sample_user_regs; scalar_t__ initial_delay; scalar_t__ period; scalar_t__ period_set; int ignore_missing_thread; scalar_t__ all_kernel; scalar_t__ all_user; int clockid; scalar_t__ use_clockid; TYPE_2__ target; scalar_t__ running_time; scalar_t__ sample_transaction; scalar_t__ record_switch_events; scalar_t__ record_namespaces; int no_bpf_event; scalar_t__ sample_weight; scalar_t__ branch_stack; scalar_t__ no_buffering; scalar_t__ sample_phys_addr; scalar_t__ sample_address; scalar_t__ raw_samples; scalar_t__ sample_time_set; int no_inherit; scalar_t__ sample_time; scalar_t__ sample_cpu; scalar_t__ sample_intr_regs; scalar_t__ inherit_stat; scalar_t__ no_samples; scalar_t__ default_interval; scalar_t__ freq; scalar_t__ overwrite; } ;
struct perf_event_attr {int sample_id_all; int inherit; int write_backward; int read_format; int freq; int inherit_stat; int mmap_data; int exclude_callchain_user; int sample_regs_user; int wakeup_events; int task; int mmap; int mmap2; int comm; int ksymbol; int bpf_event; int namespaces; int context_switch; int disabled; int enable_on_exec; int use_clockid; int precise_ip; int exclude_kernel; int exclude_user; int clockid; scalar_t__ branch_sample_type; scalar_t__ watermark; scalar_t__ sample_regs_intr; scalar_t__ sample_freq; int sample_type; scalar_t__ sample_period; } ;
struct TYPE_5__ {int nr_members; struct perf_event_attr attr; scalar_t__ own_cpus; } ;
struct evsel {int tracking; int ignore_missing_thread; TYPE_1__ core; scalar_t__ unit; scalar_t__ precise_max; scalar_t__ immediate; int no_aux_samples; scalar_t__ sample_read; struct evsel* leader; } ;
struct callchain_param {scalar_t__ enabled; } ;
struct TYPE_7__ {int bpf; int ksymbol; int mmap2; scalar_t__ sample_id_all; } ;


 int ADDR ;
 int BRANCH_STACK ;
 int CPU ;
 int DATA_SRC ;
 int IP ;
 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 int PERIOD ;
 int PHYS_ADDR ;
 int RAW ;
 int READ ;
 int REGS_INTR ;
 int REGS_USER ;
 int TID ;
 int TIME ;
 int TRANSACTION ;
 scalar_t__ UINT_MAX ;
 scalar_t__ ULLONG_MAX ;
 int WEIGHT ;
 int apply_config_terms (struct evsel*,struct record_opts*,int) ;
 int clockid ;
 scalar_t__ is_dummy_event (struct evsel*) ;
 int perf_evsel__config_callchain (struct evsel*,struct record_opts*,struct callchain_param*) ;
 scalar_t__ perf_evsel__is_function_event (struct evsel*) ;
 scalar_t__ perf_evsel__is_group_leader (struct evsel*) ;
 int perf_evsel__reset_sample_bit (struct evsel*,int ) ;
 int perf_evsel__set_sample_bit (struct evsel*,int ) ;
 int perf_evsel__set_sample_id (struct evsel*,int) ;
 TYPE_4__ perf_missing_features ;
 scalar_t__ target__has_cpu (TYPE_2__*) ;
 scalar_t__ target__none (TYPE_2__*) ;

void perf_evsel__config(struct evsel *evsel, struct record_opts *opts,
   struct callchain_param *callchain)
{
 struct evsel *leader = evsel->leader;
 struct perf_event_attr *attr = &evsel->core.attr;
 int track = evsel->tracking;
 bool per_cpu = opts->target.default_per_cpu && !opts->target.per_thread;

 attr->sample_id_all = perf_missing_features.sample_id_all ? 0 : 1;
 attr->inherit = !opts->no_inherit;
 attr->write_backward = opts->overwrite ? 1 : 0;

 perf_evsel__set_sample_bit(evsel, IP);
 perf_evsel__set_sample_bit(evsel, TID);

 if (evsel->sample_read) {
  perf_evsel__set_sample_bit(evsel, READ);





  perf_evsel__set_sample_id(evsel, 0);





  if (leader->core.nr_members > 1) {
   attr->read_format |= PERF_FORMAT_GROUP;
   attr->inherit = 0;
  }
 }





 if (!attr->sample_period || (opts->user_freq != UINT_MAX ||
         opts->user_interval != ULLONG_MAX)) {
  if (opts->freq) {
   perf_evsel__set_sample_bit(evsel, PERIOD);
   attr->freq = 1;
   attr->sample_freq = opts->freq;
  } else {
   attr->sample_period = opts->default_interval;
  }
 }





 if ((leader != evsel) && leader->sample_read) {
  attr->freq = 0;
  attr->sample_freq = 0;
  attr->sample_period = 0;
  attr->write_backward = 0;







  attr->sample_type = leader->core.attr.sample_type;
 }

 if (opts->no_samples)
  attr->sample_freq = 0;

 if (opts->inherit_stat) {
  evsel->core.attr.read_format |=
   PERF_FORMAT_TOTAL_TIME_ENABLED |
   PERF_FORMAT_TOTAL_TIME_RUNNING |
   PERF_FORMAT_ID;
  attr->inherit_stat = 1;
 }

 if (opts->sample_address) {
  perf_evsel__set_sample_bit(evsel, ADDR);
  attr->mmap_data = track;
 }






 if (perf_evsel__is_function_event(evsel))
  evsel->core.attr.exclude_callchain_user = 1;

 if (callchain && callchain->enabled && !evsel->no_aux_samples)
  perf_evsel__config_callchain(evsel, opts, callchain);

 if (opts->sample_intr_regs) {
  attr->sample_regs_intr = opts->sample_intr_regs;
  perf_evsel__set_sample_bit(evsel, REGS_INTR);
 }

 if (opts->sample_user_regs) {
  attr->sample_regs_user |= opts->sample_user_regs;
  perf_evsel__set_sample_bit(evsel, REGS_USER);
 }

 if (target__has_cpu(&opts->target) || opts->sample_cpu)
  perf_evsel__set_sample_bit(evsel, CPU);




 if (opts->sample_time &&
     (!perf_missing_features.sample_id_all &&
     (!opts->no_inherit || target__has_cpu(&opts->target) || per_cpu ||
      opts->sample_time_set)))
  perf_evsel__set_sample_bit(evsel, TIME);

 if (opts->raw_samples && !evsel->no_aux_samples) {
  perf_evsel__set_sample_bit(evsel, TIME);
  perf_evsel__set_sample_bit(evsel, RAW);
  perf_evsel__set_sample_bit(evsel, CPU);
 }

 if (opts->sample_address)
  perf_evsel__set_sample_bit(evsel, DATA_SRC);

 if (opts->sample_phys_addr)
  perf_evsel__set_sample_bit(evsel, PHYS_ADDR);

 if (opts->no_buffering) {
  attr->watermark = 0;
  attr->wakeup_events = 1;
 }
 if (opts->branch_stack && !evsel->no_aux_samples) {
  perf_evsel__set_sample_bit(evsel, BRANCH_STACK);
  attr->branch_sample_type = opts->branch_stack;
 }

 if (opts->sample_weight)
  perf_evsel__set_sample_bit(evsel, WEIGHT);

 attr->task = track;
 attr->mmap = track;
 attr->mmap2 = track && !perf_missing_features.mmap2;
 attr->comm = track;
 attr->ksymbol = track && !perf_missing_features.ksymbol;
 attr->bpf_event = track && !opts->no_bpf_event && !perf_missing_features.bpf;

 if (opts->record_namespaces)
  attr->namespaces = track;

 if (opts->record_switch_events)
  attr->context_switch = track;

 if (opts->sample_transaction)
  perf_evsel__set_sample_bit(evsel, TRANSACTION);

 if (opts->running_time) {
  evsel->core.attr.read_format |=
   PERF_FORMAT_TOTAL_TIME_ENABLED |
   PERF_FORMAT_TOTAL_TIME_RUNNING;
 }







 if (perf_evsel__is_group_leader(evsel))
  attr->disabled = 1;





 if (target__none(&opts->target) && perf_evsel__is_group_leader(evsel) &&
  !opts->initial_delay)
  attr->enable_on_exec = 1;

 if (evsel->immediate) {
  attr->disabled = 0;
  attr->enable_on_exec = 0;
 }

 clockid = opts->clockid;
 if (opts->use_clockid) {
  attr->use_clockid = 1;
  attr->clockid = opts->clockid;
 }

 if (evsel->precise_max)
  attr->precise_ip = 3;

 if (opts->all_user) {
  attr->exclude_kernel = 1;
  attr->exclude_user = 0;
 }

 if (opts->all_kernel) {
  attr->exclude_kernel = 0;
  attr->exclude_user = 1;
 }

 if (evsel->core.own_cpus || evsel->unit)
  evsel->core.attr.read_format |= PERF_FORMAT_ID;





 apply_config_terms(evsel, opts, track);

 evsel->ignore_missing_thread = opts->ignore_missing_thread;


 if (opts->period_set) {
  if (opts->period)
   perf_evsel__set_sample_bit(evsel, PERIOD);
  else
   perf_evsel__reset_sample_bit(evsel, PERIOD);
 }






 if (opts->initial_delay && is_dummy_event(evsel))
  perf_evsel__reset_sample_bit(evsel, BRANCH_STACK);
}
