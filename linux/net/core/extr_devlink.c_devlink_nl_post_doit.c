
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {int dummy; } ;
struct devlink {int lock; } ;


 int DEVLINK_NL_FLAG_NO_LOCK ;
 struct devlink* devlink_get_from_info (struct genl_info*) ;
 int devlink_mutex ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void devlink_nl_post_doit(const struct genl_ops *ops,
     struct sk_buff *skb, struct genl_info *info)
{
 struct devlink *devlink;

 devlink = devlink_get_from_info(info);
 if (~ops->internal_flags & DEVLINK_NL_FLAG_NO_LOCK)
  mutex_unlock(&devlink->lock);
 mutex_unlock(&devlink_mutex);
}
