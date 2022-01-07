
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {char* name; int const_len; scalar_t__ is_dir; int is_patterned; } ;


 scalar_t__ strncmp (char const*,char const*,int const) ;
 int tomoyo_path_matches_pattern2 (char const*,char const*) ;
 int tomoyo_pathcmp (struct tomoyo_path_info const*,struct tomoyo_path_info const*) ;

bool tomoyo_path_matches_pattern(const struct tomoyo_path_info *filename,
     const struct tomoyo_path_info *pattern)
{
 const char *f = filename->name;
 const char *p = pattern->name;
 const int len = pattern->const_len;


 if (!pattern->is_patterned)
  return !tomoyo_pathcmp(filename, pattern);

 if (filename->is_dir != pattern->is_dir)
  return 0;

 if (strncmp(f, p, len))
  return 0;
 f += len;
 p += len;
 return tomoyo_path_matches_pattern2(f, p);
}
