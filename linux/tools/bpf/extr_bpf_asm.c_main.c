
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int bpf_asm_compile (int *,int) ;
 int * fopen (char*,char*) ;
 int * stdin ;
 int strncmp (char*,char*,int) ;

int main(int argc, char **argv)
{
 FILE *fp = stdin;
 bool cstyle = 0;
 int i;

 for (i = 1; i < argc; i++) {
  if (!strncmp("-c", argv[i], 2)) {
   cstyle = 1;
   continue;
  }

  fp = fopen(argv[i], "r");
  if (!fp) {
   fp = stdin;
   continue;
  }

  break;
 }

 bpf_asm_compile(fp, cstyle);

 return 0;
}
