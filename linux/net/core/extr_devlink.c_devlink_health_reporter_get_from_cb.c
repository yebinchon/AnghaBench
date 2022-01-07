
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_1__* skb; int extack; int nlh; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_4__ {int policy; scalar_t__ hdrsize; } ;
struct TYPE_3__ {int sk; } ;


 scalar_t__ DEVLINK_ATTR_MAX ;
 scalar_t__ GENL_HDRLEN ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct devlink*) ;
 struct devlink* devlink_get_from_attrs (int ,struct nlattr**) ;
 struct devlink_health_reporter* devlink_health_reporter_get_from_attrs (struct devlink*,struct nlattr**) ;
 int devlink_mutex ;
 TYPE_2__ devlink_nl_family ;
 int kfree (struct nlattr**) ;
 struct nlattr** kmalloc_array (scalar_t__,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlmsg_parse_deprecated (int ,scalar_t__,struct nlattr**,scalar_t__,int ,int ) ;
 int sock_net (int ) ;

__attribute__((used)) static struct devlink_health_reporter *
devlink_health_reporter_get_from_cb(struct netlink_callback *cb)
{
 struct devlink_health_reporter *reporter;
 struct devlink *devlink;
 struct nlattr **attrs;
 int err;

 attrs = kmalloc_array(DEVLINK_ATTR_MAX + 1, sizeof(*attrs), GFP_KERNEL);
 if (!attrs)
  return ((void*)0);

 err = nlmsg_parse_deprecated(cb->nlh,
         GENL_HDRLEN + devlink_nl_family.hdrsize,
         attrs, DEVLINK_ATTR_MAX,
         devlink_nl_family.policy, cb->extack);
 if (err)
  goto free;

 mutex_lock(&devlink_mutex);
 devlink = devlink_get_from_attrs(sock_net(cb->skb->sk), attrs);
 if (IS_ERR(devlink))
  goto unlock;

 reporter = devlink_health_reporter_get_from_attrs(devlink, attrs);
 mutex_unlock(&devlink_mutex);
 kfree(attrs);
 return reporter;
unlock:
 mutex_unlock(&devlink_mutex);
free:
 kfree(attrs);
 return ((void*)0);
}
