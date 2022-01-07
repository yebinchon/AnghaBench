
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *next_string(char *string, unsigned long *secsize)
{

 while (string[0]) {
  string++;
  if ((*secsize)-- <= 1)
   return ((void*)0);
 }


 while (!string[0]) {
  string++;
  if ((*secsize)-- <= 1)
   return ((void*)0);
 }
 return string;
}
