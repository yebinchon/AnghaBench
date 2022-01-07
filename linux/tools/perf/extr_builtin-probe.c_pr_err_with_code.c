
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 int STRERR_BUFSIZE ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,...) ;
 int str_error_r (int,char*,int) ;

__attribute__((used)) static void pr_err_with_code(const char *msg, int err)
{
 char sbuf[STRERR_BUFSIZE];

 pr_err("%s", msg);
 pr_debug(" Reason: %s (Code: %d)",
   str_error_r(-err, sbuf, sizeof(sbuf)), err);
 pr_err("\n");
}
