
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_event {int dummy; } ;


 int ENOMEM ;
 char const* ERR_PTR (int) ;
 int do_prog_config (char*,char*,struct perf_probe_event*) ;
 int free (char*) ;
 int pr_debug (char*) ;
 int pr_warning (char*,...) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static const char *
parse_prog_config_kvpair(const char *config_str, struct perf_probe_event *pev)
{
 char *text = strdup(config_str);
 char *sep, *line;
 const char *main_str = ((void*)0);
 int err = 0;

 if (!text) {
  pr_debug("Not enough memory: dup config_str failed\n");
  return ERR_PTR(-ENOMEM);
 }

 line = text;
 while ((sep = strchr(line, ';'))) {
  char *equ;

  *sep = '\0';
  equ = strchr(line, '=');
  if (!equ) {
   pr_warning("WARNING: invalid config in BPF object: %s\n",
       line);
   pr_warning("\tShould be 'key=value'.\n");
   goto nextline;
  }
  *equ = '\0';

  err = do_prog_config(line, equ + 1, pev);
  if (err)
   break;
nextline:
  line = sep + 1;
 }

 if (!err)
  main_str = config_str + (line - text);
 free(text);

 return err ? ERR_PTR(err) : main_str;
}
