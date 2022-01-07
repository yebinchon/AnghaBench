
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {struct genl_ops* data; } ;
struct genl_ops {int (* dumpit ) (struct sk_buff*,struct netlink_callback*) ;} ;


 int genl_lock () ;
 int genl_unlock () ;
 int stub1 (struct sk_buff*,struct netlink_callback*) ;

__attribute__((used)) static int genl_lock_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
{

 const struct genl_ops *ops = cb->data;
 int rc;

 genl_lock();
 rc = ops->dumpit(skb, cb);
 genl_unlock();
 return rc;
}
