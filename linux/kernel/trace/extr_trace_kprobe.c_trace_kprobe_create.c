
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_kprobe {int tp; } ;


 int BAD_INSN_BNDRY ;
 int BAD_MAXACT ;
 int BAD_PROBE_ADDR ;
 int BAD_RETPROBE ;
 int ECANCELED ;
 int EEXIST ;
 int EILSEQ ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int FAIL_REG_PROBE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct trace_kprobe*) ;
 char* KPROBE_EVENT_SYSTEM ;
 int KRETPROBE_MAXACTIVE_MAX ;
 int MAXACT_NO_KPROBE ;
 int MAXACT_TOO_BIG ;
 int MAX_EVENT_NAME_LEN ;
 int MAX_TRACE_ARGS ;
 int PTR_ERR (struct trace_kprobe*) ;
 unsigned int TPARG_FL_FENTRY ;
 unsigned int TPARG_FL_KERNEL ;
 unsigned int TPARG_FL_RETURN ;
 long UINT_MAX ;
 int WARN_ON_ONCE (int) ;
 struct trace_kprobe* alloc_trace_kprobe (char const*,char const*,void*,char*,long,int,int,int) ;
 int free_trace_kprobe (struct trace_kprobe*) ;
 scalar_t__ isdigit (char const) ;
 int kfree (char*) ;
 scalar_t__ kprobe_on_func_entry (int *,char*,long) ;
 char* kstrdup (char const*,int ) ;
 int kstrtouint (char*,int ,int*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int memcpy (char*,char const*,int) ;
 int register_trace_kprobe (struct trace_kprobe*) ;
 int sanitize_event_name (char*) ;
 int snprintf (char*,int,char*,char,void*,...) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int trace_probe_log_clear () ;
 int trace_probe_log_err (int,int ) ;
 int trace_probe_log_init (char*,int,char const**) ;
 int trace_probe_log_set_index (int) ;
 int traceprobe_parse_event_name (char const**,char const**,char*,int) ;
 int traceprobe_parse_probe_arg (int *,int,char*,unsigned int) ;
 int traceprobe_set_print_fmt (int *,int) ;
 int traceprobe_split_symbol_offset (char*,long*) ;

__attribute__((used)) static int trace_kprobe_create(int argc, const char *argv[])
{
 struct trace_kprobe *tk = ((void*)0);
 int i, len, ret = 0;
 bool is_return = 0;
 char *symbol = ((void*)0), *tmp = ((void*)0);
 const char *event = ((void*)0), *group = KPROBE_EVENT_SYSTEM;
 int maxactive = 0;
 long offset = 0;
 void *addr = ((void*)0);
 char buf[MAX_EVENT_NAME_LEN];
 unsigned int flags = TPARG_FL_KERNEL;

 switch (argv[0][0]) {
 case 'r':
  is_return = 1;
  flags |= TPARG_FL_RETURN;
  break;
 case 'p':
  break;
 default:
  return -ECANCELED;
 }
 if (argc < 2)
  return -ECANCELED;

 trace_probe_log_init("trace_kprobe", argc, argv);

 event = strchr(&argv[0][1], ':');
 if (event)
  event++;

 if (isdigit(argv[0][1])) {
  if (!is_return) {
   trace_probe_log_err(1, MAXACT_NO_KPROBE);
   goto parse_error;
  }
  if (event)
   len = event - &argv[0][1] - 1;
  else
   len = strlen(&argv[0][1]);
  if (len > MAX_EVENT_NAME_LEN - 1) {
   trace_probe_log_err(1, BAD_MAXACT);
   goto parse_error;
  }
  memcpy(buf, &argv[0][1], len);
  buf[len] = '\0';
  ret = kstrtouint(buf, 0, &maxactive);
  if (ret || !maxactive) {
   trace_probe_log_err(1, BAD_MAXACT);
   goto parse_error;
  }



  if (maxactive > KRETPROBE_MAXACTIVE_MAX) {
   trace_probe_log_err(1, MAXACT_TOO_BIG);
   goto parse_error;
  }
 }



 if (kstrtoul(argv[1], 0, (unsigned long *)&addr)) {
  trace_probe_log_set_index(1);

  if (strchr(argv[1], '/') && strchr(argv[1], ':')) {
   ret = -ECANCELED;
   goto error;
  }

  symbol = kstrdup(argv[1], GFP_KERNEL);
  if (!symbol)
   return -ENOMEM;

  ret = traceprobe_split_symbol_offset(symbol, &offset);
  if (ret || offset < 0 || offset > UINT_MAX) {
   trace_probe_log_err(0, BAD_PROBE_ADDR);
   goto parse_error;
  }
  if (kprobe_on_func_entry(((void*)0), symbol, offset))
   flags |= TPARG_FL_FENTRY;
  if (offset && is_return && !(flags & TPARG_FL_FENTRY)) {
   trace_probe_log_err(0, BAD_RETPROBE);
   goto parse_error;
  }
 }

 trace_probe_log_set_index(0);
 if (event) {
  ret = traceprobe_parse_event_name(&event, &group, buf,
        event - argv[0]);
  if (ret)
   goto parse_error;
 } else {

  if (symbol)
   snprintf(buf, MAX_EVENT_NAME_LEN, "%c_%s_%ld",
     is_return ? 'r' : 'p', symbol, offset);
  else
   snprintf(buf, MAX_EVENT_NAME_LEN, "%c_0x%p",
     is_return ? 'r' : 'p', addr);
  sanitize_event_name(buf);
  event = buf;
 }


 tk = alloc_trace_kprobe(group, event, addr, symbol, offset, maxactive,
          argc - 2, is_return);
 if (IS_ERR(tk)) {
  ret = PTR_ERR(tk);

  WARN_ON_ONCE(ret != -ENOMEM);
  goto out;
 }
 argc -= 2; argv += 2;


 for (i = 0; i < argc && i < MAX_TRACE_ARGS; i++) {
  tmp = kstrdup(argv[i], GFP_KERNEL);
  if (!tmp) {
   ret = -ENOMEM;
   goto error;
  }

  trace_probe_log_set_index(i + 2);
  ret = traceprobe_parse_probe_arg(&tk->tp, i, tmp, flags);
  kfree(tmp);
  if (ret)
   goto error;
 }

 ret = traceprobe_set_print_fmt(&tk->tp, is_return);
 if (ret < 0)
  goto error;

 ret = register_trace_kprobe(tk);
 if (ret) {
  trace_probe_log_set_index(1);
  if (ret == -EILSEQ)
   trace_probe_log_err(0, BAD_INSN_BNDRY);
  else if (ret == -ENOENT)
   trace_probe_log_err(0, BAD_PROBE_ADDR);
  else if (ret != -ENOMEM && ret != -EEXIST)
   trace_probe_log_err(0, FAIL_REG_PROBE);
  goto error;
 }

out:
 trace_probe_log_clear();
 kfree(symbol);
 return ret;

parse_error:
 ret = -EINVAL;
error:
 free_trace_kprobe(tk);
 goto out;
}
