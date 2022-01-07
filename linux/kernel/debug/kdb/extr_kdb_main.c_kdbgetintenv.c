
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kdbgetulenv (char const*,unsigned long*) ;

int kdbgetintenv(const char *match, int *value)
{
 unsigned long val;
 int diag;

 diag = kdbgetulenv(match, &val);
 if (!diag)
  *value = (int) val;
 return diag;
}
