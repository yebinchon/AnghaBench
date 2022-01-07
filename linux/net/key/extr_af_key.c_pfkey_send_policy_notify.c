
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_policy {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct km_event {int event; TYPE_1__ data; } ;







 scalar_t__ XFRM_POLICY_TYPE_MAIN ;
 int key_notify_policy (struct xfrm_policy*,int,struct km_event const*) ;
 int key_notify_policy_expire (struct xfrm_policy*,struct km_event const*) ;
 int key_notify_policy_flush (struct km_event const*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int pfkey_send_policy_notify(struct xfrm_policy *xp, int dir, const struct km_event *c)
{
 if (xp && xp->type != XFRM_POLICY_TYPE_MAIN)
  return 0;

 switch (c->event) {
 case 129:
  return key_notify_policy_expire(xp, c);
 case 132:
 case 130:
 case 128:
  return key_notify_policy(xp, dir, c);
 case 131:
  if (c->data.type != XFRM_POLICY_TYPE_MAIN)
   break;
  return key_notify_policy_flush(c);
 default:
  pr_err("pfkey: Unknown policy event %d\n", c->event);
  break;
 }

 return 0;
}
