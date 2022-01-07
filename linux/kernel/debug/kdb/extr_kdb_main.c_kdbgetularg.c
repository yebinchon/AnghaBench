
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_BADINT ;
 unsigned long simple_strtoul (char const*,char**,int) ;

int kdbgetularg(const char *arg, unsigned long *value)
{
 char *endp;
 unsigned long val;

 val = simple_strtoul(arg, &endp, 0);

 if (endp == arg) {




  val = simple_strtoul(arg, &endp, 16);
  if (endp == arg)
   return KDB_BADINT;
 }

 *value = val;

 return 0;
}
