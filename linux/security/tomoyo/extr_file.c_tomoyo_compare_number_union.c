
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_number_union {unsigned long const* values; scalar_t__ group; } ;


 int tomoyo_number_matches_group (unsigned long const,unsigned long const,scalar_t__) ;

bool tomoyo_compare_number_union(const unsigned long value,
     const struct tomoyo_number_union *ptr)
{
 if (ptr->group)
  return tomoyo_number_matches_group(value, value, ptr->group);
 return value >= ptr->values[0] && value <= ptr->values[1];
}
