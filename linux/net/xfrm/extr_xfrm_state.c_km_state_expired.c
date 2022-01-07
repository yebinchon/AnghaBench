
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct TYPE_2__ {int hard; } ;
struct km_event {int event; int portid; TYPE_1__ data; } ;


 int XFRM_MSG_EXPIRE ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;

void km_state_expired(struct xfrm_state *x, int hard, u32 portid)
{
 struct km_event c;

 c.data.hard = hard;
 c.portid = portid;
 c.event = XFRM_MSG_EXPIRE;
 km_state_notify(x, &c);
}
