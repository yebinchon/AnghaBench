
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 int STRERR_BUFSIZE ;
 int errno ;
 int pr_warning (char*,char const*,int ) ;
 int str_error_r (int ,char*,int) ;

__attribute__((used)) static void exec_failed(const char *cmd)
{
 char sbuf[STRERR_BUFSIZE];
 pr_warning("failed to exec '%s': %s", cmd, str_error_r(errno, sbuf, sizeof(sbuf)));
}
