
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; } ;


 scalar_t__ DT_DIR ;
 int lsdir_no_dot_filter (char const*,struct dirent*) ;

__attribute__((used)) static bool visible_dir_filter(const char *name, struct dirent *d)
{
 if (d->d_type != DT_DIR)
  return 0;
 return lsdir_no_dot_filter(name, d);
}
