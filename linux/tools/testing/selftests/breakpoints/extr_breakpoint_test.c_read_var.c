
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_trapped () ;
 int * dummy_var ;

__attribute__((used)) static void read_var(int len)
{
 char cval; short sval; int ival; long long lval;
 int i;

 for (i = 0; i < 4; i++) {
  switch (len) {
  case 1:
   cval = *(char *)&dummy_var[i];
   break;
  case 2:
   sval = *(short *)&dummy_var[i];
   break;
  case 4:
   ival = *(int *)&dummy_var[i];
   break;
  case 8:
   lval = *(long long *)&dummy_var[i];
   break;
  }
  check_trapped();
 }
}
