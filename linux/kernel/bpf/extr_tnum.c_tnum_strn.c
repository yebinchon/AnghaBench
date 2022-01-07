
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnum {int mask; int value; } ;


 int snprintf (char*,size_t,char*,int ,int ) ;

int tnum_strn(char *str, size_t size, struct tnum a)
{
 return snprintf(str, size, "(%#llx; %#llx)", a.value, a.mask);
}
