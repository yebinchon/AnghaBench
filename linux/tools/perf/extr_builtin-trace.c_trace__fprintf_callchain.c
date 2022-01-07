
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace {int output; } ;
struct perf_sample {int dummy; } ;
struct TYPE_2__ {int bt_stop_list; } ;


 unsigned int EVSEL__PRINT_DSO ;
 unsigned int EVSEL__PRINT_SYM ;
 unsigned int EVSEL__PRINT_UNKNOWN_AS_ADDR ;
 int callchain_cursor ;
 int sample__fprintf_callchain (struct perf_sample*,int,unsigned int const,int *,int ,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int trace__fprintf_callchain(struct trace *trace, struct perf_sample *sample)
{

 const unsigned int print_opts = EVSEL__PRINT_SYM |
            EVSEL__PRINT_DSO |
            EVSEL__PRINT_UNKNOWN_AS_ADDR;

 return sample__fprintf_callchain(sample, 38, print_opts, &callchain_cursor, symbol_conf.bt_stop_list, trace->output);
}
