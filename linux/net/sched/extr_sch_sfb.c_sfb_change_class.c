
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int sfb_change_class(struct Qdisc *sch, u32 classid, u32 parentid,
       struct nlattr **tca, unsigned long *arg,
       struct netlink_ext_ack *extack)
{
 return -ENOSYS;
}
