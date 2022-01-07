
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char*) ;
 int run_shell_loop (int ,int ) ;
 int stdin ;
 int stdout ;

int main(int argc, char **argv)
{
 FILE *fin = ((void*)0), *fout = ((void*)0);

 if (argc >= 2)
  fin = fopen(argv[1], "r");
 if (argc >= 3)
  fout = fopen(argv[2], "w");

 return run_shell_loop(fin ? : stdin, fout ? : stdout);
}
