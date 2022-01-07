
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void swap_bytes(void *a, void *b, size_t n)
{
 do {
  char t = ((char *)a)[--n];
  ((char *)a)[n] = ((char *)b)[n];
  ((char *)b)[n] = t;
 } while (n);
}
