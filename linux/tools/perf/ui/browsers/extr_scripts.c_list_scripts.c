
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct script_config {char const** names; char** paths; char const* perf; int index; int extra_format; } ;
struct TYPE_2__ {int attr; } ;
struct evsel {TYPE_1__ core; } ;


 int K_ENTER ;
 int SCRIPT_FULLPATH_LEN ;
 int SCRIPT_MAX_NO ;
 int SCRIPT_NAMELEN ;
 int add_script_option (char*,char*,struct script_config*) ;
 int attr_to_script (int ,int *) ;
 int find_scripts (char**,char**,int,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int perf_config (int ,struct script_config*) ;
 char* perf_exe (char*,int) ;
 int scripts_config ;
 int sprintf (char*,char*,char const*,char*) ;
 int strcpy (char*,char*) ;
 int ui__popup_menu (int,char* const*) ;
 int ui_browser__input_window (char*,char*,char*,char*,int ) ;
 int zfree (char**) ;

__attribute__((used)) static int list_scripts(char *script_name, bool *custom,
   struct evsel *evsel)
{
 char *buf, *paths[SCRIPT_MAX_NO], *names[SCRIPT_MAX_NO];
 int i, num, choice;
 int ret = 0;
 int max_std, custom_perf;
 char pbuf[256];
 const char *perf = perf_exe(pbuf, sizeof pbuf);
 struct script_config scriptc = {
  .names = (const char **)names,
  .paths = paths,
  .perf = perf
 };

 script_name[0] = 0;


 buf = malloc(SCRIPT_MAX_NO * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN));
 if (!buf)
  return -1;

 if (evsel)
  attr_to_script(scriptc.extra_format, &evsel->core.attr);
 add_script_option("Show individual samples", "", &scriptc);
 add_script_option("Show individual samples with assembler", "-F +insn --xed",
     &scriptc);
 add_script_option("Show individual samples with source", "-F +srcline,+srccode",
     &scriptc);
 perf_config(scripts_config, &scriptc);
 custom_perf = scriptc.index;
 add_script_option("Show samples with custom perf script arguments", "", &scriptc);
 i = scriptc.index;
 max_std = i;

 for (; i < SCRIPT_MAX_NO; i++) {
  names[i] = buf + (i - max_std) * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN);
  paths[i] = names[i] + SCRIPT_NAMELEN;
 }

 num = find_scripts(names + max_std, paths + max_std, SCRIPT_MAX_NO - max_std,
   SCRIPT_FULLPATH_LEN);
 if (num < 0)
  num = 0;
 choice = ui__popup_menu(num + max_std, (char * const *)names);
 if (choice < 0) {
  ret = -1;
  goto out;
 }
 if (choice == custom_perf) {
  char script_args[50];
  int key = ui_browser__input_window("perf script command",
    "Enter perf script command line (without perf script prefix)",
    script_args, "", 0);
  if (key != K_ENTER) {
   ret = -1;
   goto out;
  }
  sprintf(script_name, "%s script %s", perf, script_args);
 } else if (choice < num + max_std) {
  strcpy(script_name, paths[choice]);
 }
 *custom = choice >= max_std;

out:
 free(buf);
 for (i = 0; i < max_std; i++)
  zfree(&paths[i]);
 return ret;
}
