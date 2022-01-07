
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int dummy; } ;
struct tomoyo_name_union {struct tomoyo_path_info const* filename; scalar_t__ group; } ;


 struct tomoyo_path_info const* tomoyo_path_matches_group (struct tomoyo_path_info const*,scalar_t__) ;
 scalar_t__ tomoyo_path_matches_pattern (struct tomoyo_path_info const*,struct tomoyo_path_info const*) ;

const struct tomoyo_path_info *
tomoyo_compare_name_union(const struct tomoyo_path_info *name,
     const struct tomoyo_name_union *ptr)
{
 if (ptr->group)
  return tomoyo_path_matches_group(name, ptr->group);
 if (tomoyo_path_matches_pattern(name, ptr->filename))
  return ptr->filename;
 return ((void*)0);
}
