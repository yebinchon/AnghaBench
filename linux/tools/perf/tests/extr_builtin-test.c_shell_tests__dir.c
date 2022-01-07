
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 unsigned int ARRAY_SIZE (char const**) ;
 int free (char*) ;
 char* get_argv_exec_path () ;
 int lstat (char const*,struct stat*) ;
 int scnprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static const char *shell_tests__dir(char *path, size_t size)
{
 const char *devel_dirs[] = { "./tools/perf/tests", "./tests", };
        char *exec_path;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(devel_dirs); ++i) {
  struct stat st;
  if (!lstat(devel_dirs[i], &st)) {
   scnprintf(path, size, "%s/shell", devel_dirs[i]);
   if (!lstat(devel_dirs[i], &st))
    return path;
  }
 }


        exec_path = get_argv_exec_path();
        scnprintf(path, size, "%s/tests/shell", exec_path);
 free(exec_path);
 return path;
}
