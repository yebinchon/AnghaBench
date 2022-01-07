
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int release ;
struct TYPE_2__ {char* kbuild_dir; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int asprintf (char**,char*,char const*,char const*,char const*) ;
 int fetch_kernel_version (int *,char*,int) ;
 int free (char*) ;
 TYPE_1__ llvm_param ;

__attribute__((used)) static int detect_kbuild_dir(char **kbuild_dir)
{
 const char *test_dir = llvm_param.kbuild_dir;
 const char *prefix_dir = "";
 const char *suffix_dir = "";


 char release[128];

 char *autoconf_path;

 int err;

 if (!test_dir) {
  err = fetch_kernel_version(((void*)0), release,
        sizeof(release));
  if (err)
   return -EINVAL;

  test_dir = release;
  prefix_dir = "/lib/modules/";
  suffix_dir = "/build";
 }

 err = asprintf(&autoconf_path, "%s%s%s/include/generated/autoconf.h",
         prefix_dir, test_dir, suffix_dir);
 if (err < 0)
  return -ENOMEM;

 if (access(autoconf_path, R_OK) == 0) {
  free(autoconf_path);

  err = asprintf(kbuild_dir, "%s%s%s", prefix_dir, test_dir,
          suffix_dir);
  if (err < 0)
   return -ENOMEM;
  return 0;
 }
 free(autoconf_path);
 return -ENOENT;
}
