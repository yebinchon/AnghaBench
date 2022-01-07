
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;
 int update_turbo ;
 int usage () ;

int parse_cmdline_turbo(int i)
{
 update_turbo = 1;

 switch (i) {
 case 128:
  return 0;
 case 130:
 case 131:
 case 132:
 case 129:
  return 1;
 }
 if (i < 0 || i > 1) {
  fprintf(stderr, "--turbo-enable: 1 to enable, 0 to disable\n");
  usage();
 }
 return i;
}
