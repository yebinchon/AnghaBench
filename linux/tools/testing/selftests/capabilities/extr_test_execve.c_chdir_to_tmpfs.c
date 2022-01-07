
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cwd ;


 int PATH_MAX ;
 scalar_t__ chdir (char*) ;
 int errno ;
 char* getcwd (char*,int) ;
 int ksft_exit_fail_msg (char*,int ) ;
 scalar_t__ mount (char*,char*,char*,int ,char*) ;
 int strerror (int ) ;

__attribute__((used)) static void chdir_to_tmpfs(void)
{
 char cwd[PATH_MAX];
 if (getcwd(cwd, sizeof(cwd)) != cwd)
  ksft_exit_fail_msg("getcwd - %s\n", strerror(errno));

 if (mount("private_tmp", ".", "tmpfs", 0, "mode=0777") != 0)
  ksft_exit_fail_msg("mount private tmpfs - %s\n",
     strerror(errno));

 if (chdir(cwd) != 0)
  ksft_exit_fail_msg("chdir to private tmpfs - %s\n",
     strerror(errno));
}
