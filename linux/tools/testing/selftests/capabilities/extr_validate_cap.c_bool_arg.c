
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksft_exit_fail_msg (char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static bool bool_arg(char **argv, int i)
{
 if (!strcmp(argv[i], "0"))
  return 0;
 else if (!strcmp(argv[i], "1"))
  return 1;
 else {
  ksft_exit_fail_msg("wrong argv[%d]\n", i);
  return 0;
 }
}
