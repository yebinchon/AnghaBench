
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CMD_EX ;
 int CMD_OK ;
 int add_history (char*) ;
 int execf (char*) ;
 int exit_shell (int *,int *) ;
 int free (char*) ;
 int init_shell (int *,int *) ;
 char* readline (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int run_shell_loop(FILE *fin, FILE *fout)
{
 char *buf;

 init_shell(fin, fout);

 while ((buf = readline("> ")) != ((void*)0)) {
  int ret = execf(buf);
  if (ret == CMD_EX)
   break;
  if (ret == CMD_OK && strlen(buf) > 0)
   add_history(buf);

  free(buf);
 }

 exit_shell(fin, fout);
 return 0;
}
