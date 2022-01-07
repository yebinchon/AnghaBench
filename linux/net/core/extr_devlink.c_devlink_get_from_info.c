
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int attrs; } ;
struct devlink {int dummy; } ;


 struct devlink* devlink_get_from_attrs (int ,int ) ;
 int genl_info_net (struct genl_info*) ;

__attribute__((used)) static struct devlink *devlink_get_from_info(struct genl_info *info)
{
 return devlink_get_from_attrs(genl_info_net(info), info->attrs);
}
