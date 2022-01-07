
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_probe_event {int event; void* group; } ;
struct bpf_program {int dummy; } ;
struct bpf_prog_priv {int is_tp; void* evt_name; int sys_name; struct perf_probe_event pev; } ;
struct TYPE_2__ {int no_inlines; int force_add; } ;


 int BPF_LOADER_ERRNO__EVENTNAME ;
 int BPF_LOADER_ERRNO__GROUP ;
 int ENOMEM ;
 scalar_t__ IS_ERR (char const*) ;
 char* PERF_BPF_PROBE_GROUP ;
 int PTR_ERR (char const*) ;
 int bpf_program__set_priv (struct bpf_program*,struct bpf_prog_priv*,int ) ;
 char* bpf_program__title (struct bpf_program*,int) ;
 struct bpf_prog_priv* calloc (int,int) ;
 int clear_perf_probe_event (struct perf_probe_event*) ;
 int clear_prog_priv ;
 int free (struct bpf_prog_priv*) ;
 int parse_prog_config (char const*,char const**,int*,struct perf_probe_event*) ;
 int pr_debug (char*,...) ;
 TYPE_1__ probe_conf ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (void*,char*) ;
 void* strdup (char*) ;
 int strndup (char const*,int) ;

__attribute__((used)) static int
config_bpf_program(struct bpf_program *prog)
{
 struct perf_probe_event *pev = ((void*)0);
 struct bpf_prog_priv *priv = ((void*)0);
 const char *config_str, *main_str;
 bool is_tp = 0;
 int err;


 probe_conf.no_inlines = 0;
 probe_conf.force_add = 0;

 config_str = bpf_program__title(prog, 0);
 if (IS_ERR(config_str)) {
  pr_debug("bpf: unable to get title for program\n");
  return PTR_ERR(config_str);
 }

 priv = calloc(sizeof(*priv), 1);
 if (!priv) {
  pr_debug("bpf: failed to alloc priv\n");
  return -ENOMEM;
 }
 pev = &priv->pev;

 pr_debug("bpf: config program '%s'\n", config_str);
 err = parse_prog_config(config_str, &main_str, &is_tp, pev);
 if (err)
  goto errout;

 if (is_tp) {
  char *s = strchr(main_str, ':');

  priv->is_tp = 1;
  priv->sys_name = strndup(main_str, s - main_str);
  priv->evt_name = strdup(s + 1);
  goto set_priv;
 }

 if (pev->group && strcmp(pev->group, PERF_BPF_PROBE_GROUP)) {
  pr_debug("bpf: '%s': group for event is set and not '%s'.\n",
    config_str, PERF_BPF_PROBE_GROUP);
  err = -BPF_LOADER_ERRNO__GROUP;
  goto errout;
 } else if (!pev->group)
  pev->group = strdup(PERF_BPF_PROBE_GROUP);

 if (!pev->group) {
  pr_debug("bpf: strdup failed\n");
  err = -ENOMEM;
  goto errout;
 }

 if (!pev->event) {
  pr_debug("bpf: '%s': event name is missing. Section name should be 'key=value'\n",
    config_str);
  err = -BPF_LOADER_ERRNO__EVENTNAME;
  goto errout;
 }
 pr_debug("bpf: config '%s' is ok\n", config_str);

set_priv:
 err = bpf_program__set_priv(prog, priv, clear_prog_priv);
 if (err) {
  pr_debug("Failed to set priv for program '%s'\n", config_str);
  goto errout;
 }

 return 0;

errout:
 if (pev)
  clear_perf_probe_event(pev);
 free(priv);
 return err;
}
