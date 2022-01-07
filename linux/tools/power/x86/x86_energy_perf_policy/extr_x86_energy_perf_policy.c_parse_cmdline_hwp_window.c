
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int printf (char*,int,unsigned int) ;
 int stderr ;
 int update_hwp_window ;
 int usage () ;

int parse_cmdline_hwp_window(int i)
{
 unsigned int exponent;

 update_hwp_window = 1;

 switch (i) {
 case 128:
 case 131:
 case 130:
 case 132:
 case 129:
  return 0;
 }
 if (i < 0 || i > 1270000000) {
  fprintf(stderr, "--hwp-window: 0 for auto; 1 - 1270000000 usec for window duration\n");
  usage();
 }
 for (exponent = 0; ; ++exponent) {
  if (debug)
   printf("%d 10^%d\n", i, exponent);

  if (i <= 127)
   break;

  i = i / 10;
 }
 if (debug)
  fprintf(stderr, "%d*10^%d: 0x%x\n", i, exponent, (exponent << 7) | i);

 return (exponent << 7) | i;
}
