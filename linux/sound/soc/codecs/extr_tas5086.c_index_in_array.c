
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;

__attribute__((used)) static int index_in_array(const int *array, int len, int needle)
{
 int i;

 for (i = 0; i < len; i++)
  if (array[i] == needle)
   return i;

 return -ENOENT;
}
