
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p_err (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int check_single_stdin(char *file_data_in, char *file_ctx_in)
{
 if (file_data_in && file_ctx_in &&
     !strcmp(file_data_in, "-") && !strcmp(file_ctx_in, "-")) {
  p_err("cannot use standard input for both data_in and ctx_in");
  return -1;
 }

 return 0;
}
