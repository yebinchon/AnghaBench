
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strpbrk(const char *cs, const char *ct)
{
 const char *sc1, *sc2;

 for (sc1 = cs; *sc1 != '\0'; ++sc1) {
  for (sc2 = ct; *sc2 != '\0'; ++sc2) {
   if (*sc1 == *sc2)
    return (char *)sc1;
  }
 }
 return ((void*)0);
}
