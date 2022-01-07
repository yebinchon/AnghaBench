
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int call_int_hook (int ,int ,struct path const*,struct path const*) ;
 int sb_pivotroot ;

int security_sb_pivotroot(const struct path *old_path, const struct path *new_path)
{
 return call_int_hook(sb_pivotroot, 0, old_path, new_path);
}
