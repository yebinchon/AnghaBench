
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int array_find_l(long array[], long item)
{
 int i;

 for (i = 0; array[i] != -1; i++)
  if (array[i] == item)
   return i;

 return -1;
}
