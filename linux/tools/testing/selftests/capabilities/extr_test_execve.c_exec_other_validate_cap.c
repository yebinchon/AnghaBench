
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int execl (char const*,char const*,char*,char*,char*,char*,int *) ;
 int ksft_exit_fail_msg (char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void exec_other_validate_cap(const char *name,
        bool eff, bool perm, bool inh, bool ambient)
{
 execl(name, name, (eff ? "1" : "0"),
       (perm ? "1" : "0"), (inh ? "1" : "0"), (ambient ? "1" : "0"),
       ((void*)0));
 ksft_exit_fail_msg("execl - %s\n", strerror(errno));
}
