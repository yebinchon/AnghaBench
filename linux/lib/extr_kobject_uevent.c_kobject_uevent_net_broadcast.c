
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net {TYPE_3__* uevent_sock; } ;
struct kobject {TYPE_2__* ktype; struct kobject* parent; TYPE_1__* kset; } ;
struct kobj_uevent_env {int dummy; } ;
struct kobj_ns_type_operations {scalar_t__ type; scalar_t__ netlink_ns; } ;
struct TYPE_6__ {int sk; } ;
struct TYPE_5__ {struct net* (* namespace ) (struct kobject*) ;} ;
struct TYPE_4__ {struct kobject kobj; } ;


 scalar_t__ KOBJ_NS_TYPE_NET ;
 struct kobj_ns_type_operations* kobj_ns_ops (struct kobject*) ;
 struct net* stub1 (struct kobject*) ;
 int uevent_net_broadcast_tagged (int ,struct kobj_uevent_env*,char const*,char const*) ;
 int uevent_net_broadcast_untagged (struct kobj_uevent_env*,char const*,char const*) ;

__attribute__((used)) static int kobject_uevent_net_broadcast(struct kobject *kobj,
     struct kobj_uevent_env *env,
     const char *action_string,
     const char *devpath)
{
 int ret = 0;
 return ret;
}
