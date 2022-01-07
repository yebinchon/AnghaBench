
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;



__attribute__((used)) static int pidlist_uniq(pid_t *list, int length)
{
 int src, dest = 1;





 if (length == 0 || length == 1)
  return length;

 for (src = 1; src < length; src++) {

  while (list[src] == list[src-1]) {
   src++;
   if (src == length)
    goto after;
  }

  list[dest] = list[src];
  dest++;
 }
after:
 return dest;
}
