
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;
struct prog_entry {int dummy; } ;
struct filter_parse_error {int dummy; } ;
struct event_filter {int prog; } ;


 int EINVAL ;
 int FILT_ERR_MISSING_QUOTE ;
 int FILT_ERR_TOO_MANY_CLOSE ;
 int FILT_ERR_TOO_MANY_OPEN ;
 scalar_t__ IS_ERR (struct prog_entry*) ;

 int PTR_ERR (struct prog_entry*) ;

 int calc_stack (char const*,int*,int*,int*) ;
 int parse_error (struct filter_parse_error*,int ,int) ;
 int parse_pred ;
 struct prog_entry* predicate_parse (char const*,int,int,int ,struct trace_event_call*,struct filter_parse_error*) ;
 int rcu_assign_pointer (int ,struct prog_entry*) ;

__attribute__((used)) static int process_preds(struct trace_event_call *call,
    const char *filter_string,
    struct event_filter *filter,
    struct filter_parse_error *pe)
{
 struct prog_entry *prog;
 int nr_parens;
 int nr_preds;
 int index;
 int ret;

 ret = calc_stack(filter_string, &nr_parens, &nr_preds, &index);
 if (ret < 0) {
  switch (ret) {
  case 129:
   parse_error(pe, FILT_ERR_MISSING_QUOTE, index);
   break;
  case 128:
   parse_error(pe, FILT_ERR_TOO_MANY_OPEN, index);
   break;
  default:
   parse_error(pe, FILT_ERR_TOO_MANY_CLOSE, index);
  }
  return ret;
 }

 if (!nr_preds)
  return -EINVAL;

 prog = predicate_parse(filter_string, nr_parens, nr_preds,
          parse_pred, call, pe);
 if (IS_ERR(prog))
  return PTR_ERR(prog);

 rcu_assign_pointer(filter->prog, prog);
 return 0;
}
