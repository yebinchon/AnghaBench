
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int tomoyo_mount_permission (char const*,struct path const*,char const*,unsigned long,void*) ;

__attribute__((used)) static int tomoyo_sb_mount(const char *dev_name, const struct path *path,
      const char *type, unsigned long flags, void *data)
{
 return tomoyo_mount_permission(dev_name, path, type, flags, data);
}
