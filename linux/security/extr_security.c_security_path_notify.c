
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct path {int dummy; } ;


 int call_int_hook (int ,int ,struct path const*,int ,unsigned int) ;
 int path_notify ;

int security_path_notify(const struct path *path, u64 mask,
    unsigned int obj_type)
{
 return call_int_hook(path_notify, 0, path, mask, obj_type);
}
