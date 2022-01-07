
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int dummy; } ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 char** arc_triplets ;
 char** arm64_triplets ;
 char** arm_triplets ;
 scalar_t__ asprintf (char**,char*,char const* const,char const*) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ lookup_path (char*) ;
 int lookup_triplets (char const* const*,char const*) ;
 char** mips_triplets ;
 char const* perf_env__arch (struct perf_env*) ;
 char** powerpc_triplets ;
 char** s390_triplets ;
 char** sh_triplets ;
 char** sparc_triplets ;
 int strcmp (char const*,char const*) ;
 int ui__error (char*,char const*,...) ;
 char** x86_triplets ;
 int zfree (char**) ;

__attribute__((used)) static int perf_env__lookup_binutils_path(struct perf_env *env,
       const char *name, const char **path)
{
 int idx;
 const char *arch = perf_env__arch(env), *cross_env;
 const char *const *path_list;
 char *buf = ((void*)0);





 if (!strcmp(perf_env__arch(((void*)0)), arch))
  goto out;

 cross_env = getenv("CROSS_COMPILE");
 if (cross_env) {
  if (asprintf(&buf, "%s%s", cross_env, name) < 0)
   goto out_error;
  if (buf[0] == '/') {
   if (access(buf, F_OK) == 0)
    goto out;
   goto out_error;
  }
  if (lookup_path(buf))
   goto out;
  zfree(&buf);
 }

 if (!strcmp(arch, "arc"))
  path_list = arc_triplets;
 else if (!strcmp(arch, "arm"))
  path_list = arm_triplets;
 else if (!strcmp(arch, "arm64"))
  path_list = arm64_triplets;
 else if (!strcmp(arch, "powerpc"))
  path_list = powerpc_triplets;
 else if (!strcmp(arch, "sh"))
  path_list = sh_triplets;
 else if (!strcmp(arch, "s390"))
  path_list = s390_triplets;
 else if (!strcmp(arch, "sparc"))
  path_list = sparc_triplets;
 else if (!strcmp(arch, "x86"))
  path_list = x86_triplets;
 else if (!strcmp(arch, "mips"))
  path_list = mips_triplets;
 else {
  ui__error("binutils for %s not supported.\n", arch);
  goto out_error;
 }

 idx = lookup_triplets(path_list, name);
 if (idx < 0) {
  ui__error("Please install %s for %s.\n"
     "You can add it to PATH, set CROSS_COMPILE or "
     "override the default using --%s.\n",
     name, arch, name);
  goto out_error;
 }

 if (asprintf(&buf, "%s%s", path_list[idx], name) < 0)
  goto out_error;

out:
 *path = buf;
 return 0;
out_error:
 free(buf);
 *path = ((void*)0);
 return -1;
}
