
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UMH_WAIT_EXEC ;
 int argv_free (char**) ;
 char** argv_split (int ,char const*,int *) ;
 int call_usermodehelper (char*,char**,char**,int ) ;

__attribute__((used)) static int run_cmd(const char *cmd)
{
 char **argv;
 static char *envp[] = {
  "HOME=/",
  "PATH=/sbin:/bin:/usr/sbin:/usr/bin",
  ((void*)0)
 };
 int ret;
 argv = argv_split(GFP_KERNEL, cmd, ((void*)0));
 if (argv) {
  ret = call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);
  argv_free(argv);
 } else {
  ret = -ENOMEM;
 }

 return ret;
}
