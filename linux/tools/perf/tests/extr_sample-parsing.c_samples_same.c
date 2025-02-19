
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int u64 ;
struct TYPE_30__ {int regs; scalar_t__ abi; int mask; } ;
struct TYPE_29__ {size_t size; int data; } ;
struct TYPE_28__ {int regs; scalar_t__ abi; int mask; } ;
struct TYPE_22__ {size_t nr; } ;
struct TYPE_23__ {TYPE_1__ group; } ;
struct perf_sample {size_t raw_size; TYPE_9__ intr_regs; TYPE_8__ user_stack; TYPE_7__ user_regs; TYPE_6__* branch_stack; int raw_data; TYPE_5__* callchain; TYPE_2__ read; } ;
struct TYPE_27__ {size_t nr; } ;
struct TYPE_26__ {size_t nr; } ;
struct TYPE_25__ {int id; int value; } ;
struct TYPE_24__ {int * values; int nr; } ;
struct TYPE_21__ {int * entries; int nr; } ;
struct TYPE_20__ {int * ips; int nr; } ;
struct TYPE_19__ {int abi; int mask; } ;
struct TYPE_18__ {TYPE_4__ one; TYPE_3__ group; int time_running; int time_enabled; } ;
struct TYPE_17__ {int abi; int mask; } ;
struct TYPE_16__ {int size; } ;


 int COMP (int ) ;
 int MCOMP (int ) ;
 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_BRANCH_STACK ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_PHYS_ADDR ;
 int PERF_SAMPLE_RAW ;
 int PERF_SAMPLE_READ ;
 int PERF_SAMPLE_REGS_INTR ;
 int PERF_SAMPLE_REGS_USER ;
 int PERF_SAMPLE_STACK_USER ;
 int PERF_SAMPLE_STREAM_ID ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 int PERF_SAMPLE_TRANSACTION ;
 int PERF_SAMPLE_WEIGHT ;
 int addr ;
 TYPE_15__* branch_stack ;
 TYPE_14__* callchain ;
 int cpu ;
 int data_src ;
 int hweight_long (int ) ;
 int id ;
 TYPE_13__ intr_regs ;
 int ip ;
 scalar_t__ memcmp (int ,int ,size_t) ;
 int period ;
 int phys_addr ;
 int pid ;
 int pr_debug (char*) ;
 int raw_size ;
 TYPE_12__ read ;
 int stream_id ;
 int tid ;
 int time ;
 int transaction ;
 TYPE_11__ user_regs ;
 TYPE_10__ user_stack ;
 int weight ;

__attribute__((used)) static bool samples_same(const struct perf_sample *s1,
    const struct perf_sample *s2,
    u64 type, u64 read_format)
{
 size_t i;

 if (type & PERF_SAMPLE_IDENTIFIER)
  COMP(id);

 if (type & PERF_SAMPLE_IP)
  COMP(ip);

 if (type & PERF_SAMPLE_TID) {
  COMP(pid);
  COMP(tid);
 }

 if (type & PERF_SAMPLE_TIME)
  COMP(time);

 if (type & PERF_SAMPLE_ADDR)
  COMP(addr);

 if (type & PERF_SAMPLE_ID)
  COMP(id);

 if (type & PERF_SAMPLE_STREAM_ID)
  COMP(stream_id);

 if (type & PERF_SAMPLE_CPU)
  COMP(cpu);

 if (type & PERF_SAMPLE_PERIOD)
  COMP(period);

 if (type & PERF_SAMPLE_READ) {
  if (read_format & PERF_FORMAT_GROUP)
   COMP(read.group.nr);
  else
   COMP(read.one.value);
  if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
   COMP(read.time_enabled);
  if (read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
   COMP(read.time_running);

  if (read_format & PERF_FORMAT_GROUP) {
   for (i = 0; i < s1->read.group.nr; i++)
    MCOMP(read.group.values[i]);
  } else {
   COMP(read.one.id);
  }
 }

 if (type & PERF_SAMPLE_CALLCHAIN) {
  COMP(callchain->nr);
  for (i = 0; i < s1->callchain->nr; i++)
   COMP(callchain->ips[i]);
 }

 if (type & PERF_SAMPLE_RAW) {
  COMP(raw_size);
  if (memcmp(s1->raw_data, s2->raw_data, s1->raw_size)) {
   pr_debug("Samples differ at 'raw_data'\n");
   return 0;
  }
 }

 if (type & PERF_SAMPLE_BRANCH_STACK) {
  COMP(branch_stack->nr);
  for (i = 0; i < s1->branch_stack->nr; i++)
   MCOMP(branch_stack->entries[i]);
 }

 if (type & PERF_SAMPLE_REGS_USER) {
  size_t sz = hweight_long(s1->user_regs.mask) * sizeof(u64);

  COMP(user_regs.mask);
  COMP(user_regs.abi);
  if (s1->user_regs.abi &&
      (!s1->user_regs.regs || !s2->user_regs.regs ||
       memcmp(s1->user_regs.regs, s2->user_regs.regs, sz))) {
   pr_debug("Samples differ at 'user_regs'\n");
   return 0;
  }
 }

 if (type & PERF_SAMPLE_STACK_USER) {
  COMP(user_stack.size);
  if (memcmp(s1->user_stack.data, s2->user_stack.data,
      s1->user_stack.size)) {
   pr_debug("Samples differ at 'user_stack'\n");
   return 0;
  }
 }

 if (type & PERF_SAMPLE_WEIGHT)
  COMP(weight);

 if (type & PERF_SAMPLE_DATA_SRC)
  COMP(data_src);

 if (type & PERF_SAMPLE_TRANSACTION)
  COMP(transaction);

 if (type & PERF_SAMPLE_REGS_INTR) {
  size_t sz = hweight_long(s1->intr_regs.mask) * sizeof(u64);

  COMP(intr_regs.mask);
  COMP(intr_regs.abi);
  if (s1->intr_regs.abi &&
      (!s1->intr_regs.regs || !s2->intr_regs.regs ||
       memcmp(s1->intr_regs.regs, s2->intr_regs.regs, sz))) {
   pr_debug("Samples differ at 'intr_regs'\n");
   return 0;
  }
 }

 if (type & PERF_SAMPLE_PHYS_ADDR)
  COMP(phys_addr);

 return 1;
}
