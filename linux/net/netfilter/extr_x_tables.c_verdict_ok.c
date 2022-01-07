
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XT_RETURN ;

__attribute__((used)) static bool verdict_ok(int verdict)
{
 if (verdict > 0)
  return 1;

 if (verdict < 0) {
  int v = -verdict - 1;

  if (verdict == XT_RETURN)
   return 1;

  switch (v) {
  case 130: return 1;
  case 129: return 1;
  case 128: return 1;
  default:
   break;
  }

  return 0;
 }

 return 0;
}
