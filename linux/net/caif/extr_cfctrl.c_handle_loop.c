
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cfctrl {int* loop_linkused; int loop_linkid_lock; } ;




 int CFCTRL_SRV_UTIL ;
 int cfpkt_add_trail (struct cfpkt*,int*,int) ;
 int cfpkt_peek_head (struct cfpkt*,int*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int handle_loop(struct cfctrl *ctrl, int cmd, struct cfpkt *pkt)
{
 static int last_linkid;
 static int dec;
 u8 linkid, linktype, tmp;
 switch (cmd) {
 case 128:
  spin_lock_bh(&ctrl->loop_linkid_lock);
  if (!dec) {
   for (linkid = last_linkid + 1; linkid < 254; linkid++)
    if (!ctrl->loop_linkused[linkid])
     goto found;
  }
  dec = 1;
  for (linkid = last_linkid - 1; linkid > 1; linkid--)
   if (!ctrl->loop_linkused[linkid])
    goto found;
  spin_unlock_bh(&ctrl->loop_linkid_lock);
  return -1;
found:
  if (linkid < 10)
   dec = 0;

  if (!ctrl->loop_linkused[linkid])
   ctrl->loop_linkused[linkid] = 1;

  last_linkid = linkid;

  cfpkt_add_trail(pkt, &linkid, 1);
  spin_unlock_bh(&ctrl->loop_linkid_lock);
  cfpkt_peek_head(pkt, &linktype, 1);
  if (linktype == CFCTRL_SRV_UTIL) {
   tmp = 0x01;
   cfpkt_add_trail(pkt, &tmp, 1);
   cfpkt_add_trail(pkt, &tmp, 1);
  }
  break;

 case 129:
  spin_lock_bh(&ctrl->loop_linkid_lock);
  cfpkt_peek_head(pkt, &linkid, 1);
  ctrl->loop_linkused[linkid] = 0;
  spin_unlock_bh(&ctrl->loop_linkid_lock);
  break;
 default:
  break;
 }
 return 0;
}
