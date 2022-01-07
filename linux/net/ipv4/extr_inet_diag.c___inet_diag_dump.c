
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct inet_diag_req_v2 {int sdiag_protocol; } ;
struct inet_diag_handler {int (* dump ) (struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ;} ;


 int IS_ERR (struct inet_diag_handler const*) ;
 int PTR_ERR (struct inet_diag_handler const*) ;
 struct inet_diag_handler* inet_diag_lock_handler (int ) ;
 int inet_diag_unlock_handler (struct inet_diag_handler const*) ;
 int stub1 (struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ;

__attribute__((used)) static int __inet_diag_dump(struct sk_buff *skb, struct netlink_callback *cb,
       const struct inet_diag_req_v2 *r,
       struct nlattr *bc)
{
 const struct inet_diag_handler *handler;
 int err = 0;

 handler = inet_diag_lock_handler(r->sdiag_protocol);
 if (!IS_ERR(handler))
  handler->dump(skb, cb, r, bc);
 else
  err = PTR_ERR(handler);
 inet_diag_unlock_handler(handler);

 return err ? : skb->len;
}
