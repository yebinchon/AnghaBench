
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_policy {int dummy; } ;
struct TYPE_2__ {int hard; } ;
struct km_event {int event; int portid; TYPE_1__ data; } ;


 int XFRM_MSG_POLEXPIRE ;
 int km_policy_notify (struct xfrm_policy*,int,struct km_event*) ;

void km_policy_expired(struct xfrm_policy *pol, int dir, int hard, u32 portid)
{
 struct km_event c;

 c.data.hard = hard;
 c.portid = portid;
 c.event = XFRM_MSG_POLEXPIRE;
 km_policy_notify(pol, dir, &c);
}
