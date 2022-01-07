
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct event_key {int exit_reasons; int key; } ;


 int icpt_insn_decoder (unsigned long) ;
 unsigned long perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int sie_icpt_insn_codes ;

__attribute__((used)) static void event_icpt_insn_get_key(struct evsel *evsel,
        struct perf_sample *sample,
        struct event_key *key)
{
 unsigned long insn;

 insn = perf_evsel__intval(evsel, sample, "instruction");
 key->key = icpt_insn_decoder(insn);
 key->exit_reasons = sie_icpt_insn_codes;
}
