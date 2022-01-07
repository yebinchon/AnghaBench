
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 scalar_t__ KMALLOC_MAX_SIZE ;
 int count_argc (char*) ;
 scalar_t__ isspace (char) ;
 int kfree (char*) ;
 char** kmalloc_array (int,int,int ) ;
 char* kstrndup (char const*,scalar_t__,int ) ;

char **argv_split(gfp_t gfp, const char *str, int *argcp)
{
 char *argv_str;
 bool was_space;
 char **argv, **argv_ret;
 int argc;

 argv_str = kstrndup(str, KMALLOC_MAX_SIZE - 1, gfp);
 if (!argv_str)
  return ((void*)0);

 argc = count_argc(argv_str);
 argv = kmalloc_array(argc + 2, sizeof(*argv), gfp);
 if (!argv) {
  kfree(argv_str);
  return ((void*)0);
 }

 *argv = argv_str;
 argv_ret = ++argv;
 for (was_space = 1; *argv_str; argv_str++) {
  if (isspace(*argv_str)) {
   was_space = 1;
   *argv_str = 0;
  } else if (was_space) {
   was_space = 0;
   *argv++ = argv_str;
  }
 }
 *argv = ((void*)0);

 if (argcp)
  *argcp = argc;
 return argv_ret;
}
