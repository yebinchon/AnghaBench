
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool range_contains(char *haystack_start, size_t haystack_size,
      char *needle_start, size_t needle_size)
{
 if (needle_start >= haystack_start &&
     needle_start + needle_size <= haystack_start + haystack_size)
  return 1;
 return 0;
}
