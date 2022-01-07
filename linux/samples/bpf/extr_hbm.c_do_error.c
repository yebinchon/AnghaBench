
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void do_error(char *msg, bool errno_flag)
{
 if (errno_flag)
  printf("ERROR: %s, errno: %d\n", msg, errno);
 else
  printf("ERROR: %s\n", msg);
 exit(1);
}
