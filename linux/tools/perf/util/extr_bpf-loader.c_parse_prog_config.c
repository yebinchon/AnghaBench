
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_event {int dummy; } ;


 int BPF_LOADER_ERRNO__CONFIG ;
 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 int parse_perf_probe_command (char const*,struct perf_probe_event*) ;
 char* parse_prog_config_kvpair (char const*,struct perf_probe_event*) ;
 int pr_debug (char*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
parse_prog_config(const char *config_str, const char **p_main_str,
    bool *is_tp, struct perf_probe_event *pev)
{
 int err;
 const char *main_str = parse_prog_config_kvpair(config_str, pev);

 if (IS_ERR(main_str))
  return PTR_ERR(main_str);

 *p_main_str = main_str;
 if (!strchr(main_str, '=')) {

  const char *s = strchr(main_str, ':');

  if (!s) {
   pr_debug("bpf: '%s' is not a valid tracepoint\n",
     config_str);
   return -BPF_LOADER_ERRNO__CONFIG;
  }

  *is_tp = 1;
  return 0;
 }

 *is_tp = 0;
 err = parse_perf_probe_command(main_str, pev);
 if (err < 0) {
  pr_debug("bpf: '%s' is not a valid config string\n",
    config_str);

  return -BPF_LOADER_ERRNO__CONFIG;
 }
 return 0;
}
