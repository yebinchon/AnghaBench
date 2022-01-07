
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* kbuild_opts; int * kbuild_dir; } ;


 int EINVAL ;
 char* ERR_PTR (int ) ;
 int IS_ERR (char*) ;
 int detect_kbuild_dir (char**) ;
 int force_set_env (char*,char*) ;
 int kinc_fetch_script ;
 TYPE_1__ llvm_param ;
 int pr_debug (char*,...) ;
 int pr_warning (char*,...) ;
 int read_from_pipe (int ,void**,int *) ;
 char* strdup (char*) ;
 int zfree (char**) ;

void llvm__get_kbuild_opts(char **kbuild_dir, char **kbuild_include_opts)
{
 static char *saved_kbuild_dir;
 static char *saved_kbuild_include_opts;
 int err;

 if (!kbuild_dir || !kbuild_include_opts)
  return;

 *kbuild_dir = ((void*)0);
 *kbuild_include_opts = ((void*)0);

 if (saved_kbuild_dir && saved_kbuild_include_opts &&
     !IS_ERR(saved_kbuild_dir) && !IS_ERR(saved_kbuild_include_opts)) {
  *kbuild_dir = strdup(saved_kbuild_dir);
  *kbuild_include_opts = strdup(saved_kbuild_include_opts);

  if (*kbuild_dir && *kbuild_include_opts)
   return;

  zfree(kbuild_dir);
  zfree(kbuild_include_opts);





  return;
 }

 if (llvm_param.kbuild_dir && !llvm_param.kbuild_dir[0]) {
  pr_debug("[llvm.kbuild-dir] is set to \"\" deliberately.\n");
  pr_debug("Skip kbuild options detection.\n");
  goto errout;
 }

 err = detect_kbuild_dir(kbuild_dir);
 if (err) {
  pr_warning(
"WARNING:\tunable to get correct kernel building directory.\n"
"Hint:\tSet correct kbuild directory using 'kbuild-dir' option in [llvm]\n"
"     \tsection of ~/.perfconfig or set it to \"\" to suppress kbuild\n"
"     \tdetection.\n\n");
  goto errout;
 }

 pr_debug("Kernel build dir is set to %s\n", *kbuild_dir);
 force_set_env("KBUILD_DIR", *kbuild_dir);
 force_set_env("KBUILD_OPTS", llvm_param.kbuild_opts);
 err = read_from_pipe(kinc_fetch_script,
        (void **)kbuild_include_opts,
        ((void*)0));
 if (err) {
  pr_warning(
"WARNING:\tunable to get kernel include directories from '%s'\n"
"Hint:\tTry set clang include options using 'clang-bpf-cmd-template'\n"
"     \toption in [llvm] section of ~/.perfconfig and set 'kbuild-dir'\n"
"     \toption in [llvm] to \"\" to suppress this detection.\n\n",
   *kbuild_dir);

  zfree(kbuild_dir);
  goto errout;
 }

 pr_debug("include option is set to %s\n", *kbuild_include_opts);

 saved_kbuild_dir = strdup(*kbuild_dir);
 saved_kbuild_include_opts = strdup(*kbuild_include_opts);

 if (!saved_kbuild_dir || !saved_kbuild_include_opts) {
  zfree(&saved_kbuild_dir);
  zfree(&saved_kbuild_include_opts);
 }
 return;
errout:
 saved_kbuild_dir = ERR_PTR(-EINVAL);
 saved_kbuild_include_opts = ERR_PTR(-EINVAL);
}
