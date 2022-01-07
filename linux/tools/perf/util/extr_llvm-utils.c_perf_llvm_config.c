
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dump_obj; int user_set_param; void* opts; void* kbuild_opts; void* kbuild_dir; void* clang_opt; void* clang_bpf_cmd_template; void* clang_path; } ;


 TYPE_1__ llvm_param ;
 int perf_config_bool (char const*,char const*) ;
 int pr_debug (char*,char const*) ;
 int strcmp (char const*,char*) ;
 void* strdup (char const*) ;
 int strstarts (char const*,char*) ;

int perf_llvm_config(const char *var, const char *value)
{
 if (!strstarts(var, "llvm."))
  return 0;
 var += sizeof("llvm.") - 1;

 if (!strcmp(var, "clang-path"))
  llvm_param.clang_path = strdup(value);
 else if (!strcmp(var, "clang-bpf-cmd-template"))
  llvm_param.clang_bpf_cmd_template = strdup(value);
 else if (!strcmp(var, "clang-opt"))
  llvm_param.clang_opt = strdup(value);
 else if (!strcmp(var, "kbuild-dir"))
  llvm_param.kbuild_dir = strdup(value);
 else if (!strcmp(var, "kbuild-opts"))
  llvm_param.kbuild_opts = strdup(value);
 else if (!strcmp(var, "dump-obj"))
  llvm_param.dump_obj = !!perf_config_bool(var, value);
 else if (!strcmp(var, "opts"))
  llvm_param.opts = strdup(value);
 else {
  pr_debug("Invalid LLVM config option: %s\n", value);
  return -1;
 }
 llvm_param.user_set_param = 1;
 return 0;
}
