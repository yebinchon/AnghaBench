
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int TOMOYO_TYPE_PIVOT_ROOT ;
 int tomoyo_path2_perm (int ,struct path const*,struct path const*) ;

__attribute__((used)) static int tomoyo_sb_pivotroot(const struct path *old_path, const struct path *new_path)
{
 return tomoyo_path2_perm(TOMOYO_TYPE_PIVOT_ROOT, new_path, old_path);
}
