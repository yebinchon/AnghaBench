
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int call_int_hook (int ,int ,char const*,struct path const*,char const*,unsigned long,void*) ;
 int sb_mount ;

int security_sb_mount(const char *dev_name, const struct path *path,
                       const char *type, unsigned long flags, void *data)
{
 return call_int_hook(sb_mount, 0, dev_name, path, type, flags, data);
}
