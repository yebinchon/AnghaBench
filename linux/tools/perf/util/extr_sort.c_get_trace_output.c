
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_seq {scalar_t__ len; int buffer; } ;
struct tep_record {int size; int data; } ;
struct hist_entry {int raw_size; int raw_data; int hists; } ;
struct evsel {TYPE_1__* tp_format; } ;
struct TYPE_4__ {scalar_t__ raw_trace; } ;
struct TYPE_3__ {int tep; } ;


 int TEP_PRINT_INFO ;
 struct evsel* hists_to_evsel (int ) ;
 char* realloc (int ,scalar_t__) ;
 TYPE_2__ symbol_conf ;
 int tep_print_event (int ,struct trace_seq*,struct tep_record*,char*,int ) ;
 int tep_print_fields (struct trace_seq*,int ,int ,TYPE_1__*) ;
 int trace_seq_init (struct trace_seq*) ;

__attribute__((used)) static char *get_trace_output(struct hist_entry *he)
{
 struct trace_seq seq;
 struct evsel *evsel;
 struct tep_record rec = {
  .data = he->raw_data,
  .size = he->raw_size,
 };

 evsel = hists_to_evsel(he->hists);

 trace_seq_init(&seq);
 if (symbol_conf.raw_trace) {
  tep_print_fields(&seq, he->raw_data, he->raw_size,
     evsel->tp_format);
 } else {
  tep_print_event(evsel->tp_format->tep,
    &seq, &rec, "%s", TEP_PRINT_INFO);
 }




 return realloc(seq.buffer, seq.len + 1);
}
