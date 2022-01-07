
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *str_from_array(const char *const strs[], unsigned int count,
      unsigned int i)
{
 if (i < count)
  return strs[i];

 return "(unknown)";
}
