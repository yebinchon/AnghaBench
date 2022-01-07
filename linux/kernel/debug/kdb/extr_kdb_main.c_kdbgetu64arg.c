
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KDB_BADINT ;
 int simple_strtoull (char const*,char**,int) ;

int kdbgetu64arg(const char *arg, u64 *value)
{
 char *endp;
 u64 val;

 val = simple_strtoull(arg, &endp, 0);

 if (endp == arg) {

  val = simple_strtoull(arg, &endp, 16);
  if (endp == arg)
   return KDB_BADINT;
 }

 *value = val;

 return 0;
}
