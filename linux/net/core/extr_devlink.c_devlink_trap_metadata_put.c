
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_trap {int metadata_cap; } ;


 int DEVLINK_ATTR_TRAP_METADATA ;
 int DEVLINK_ATTR_TRAP_METADATA_TYPE_IN_PORT ;
 int DEVLINK_TRAP_METADATA_TYPE_F_IN_PORT ;
 int EMSGSIZE ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;

__attribute__((used)) static int devlink_trap_metadata_put(struct sk_buff *msg,
         const struct devlink_trap *trap)
{
 struct nlattr *attr;

 attr = nla_nest_start(msg, DEVLINK_ATTR_TRAP_METADATA);
 if (!attr)
  return -EMSGSIZE;

 if ((trap->metadata_cap & DEVLINK_TRAP_METADATA_TYPE_F_IN_PORT) &&
     nla_put_flag(msg, DEVLINK_ATTR_TRAP_METADATA_TYPE_IN_PORT))
  goto nla_put_failure;

 nla_nest_end(msg, attr);

 return 0;

nla_put_failure:
 nla_nest_cancel(msg, attr);
 return -EMSGSIZE;
}
