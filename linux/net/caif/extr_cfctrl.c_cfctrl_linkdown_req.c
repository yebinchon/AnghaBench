
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct cfpkt {int dummy; } ;
struct cflayer {int (* transmit ) (struct cflayer*,struct cfpkt*) ;} ;
struct TYPE_3__ {struct cflayer* dn; } ;
struct TYPE_4__ {TYPE_1__ layer; } ;
struct cfctrl {scalar_t__* loop_linkused; TYPE_2__ serv; } ;


 size_t CFCTRL_CMD_LINK_DESTROY ;
 int CFPKT_CTRL_PKT_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int TC_PRIO_CONTROL ;
 int cfpkt_addbdy (struct cfpkt*,size_t) ;
 struct cfpkt* cfpkt_create (int ) ;
 int cfpkt_info (struct cfpkt*) ;
 int cfpkt_set_prio (struct cfpkt*,int ) ;
 struct cfctrl* container_obj (struct cflayer*) ;
 int init_info (int ,struct cfctrl*) ;
 int pr_debug (char*) ;
 int stub1 (struct cflayer*,struct cfpkt*) ;

int cfctrl_linkdown_req(struct cflayer *layer, u8 channelid,
   struct cflayer *client)
{
 int ret;
 struct cfpkt *pkt;
 struct cfctrl *cfctrl = container_obj(layer);
 struct cflayer *dn = cfctrl->serv.layer.dn;

 if (!dn) {
  pr_debug("not able to send link-down request\n");
  return -ENODEV;
 }
 pkt = cfpkt_create(CFPKT_CTRL_PKT_LEN);
 if (!pkt)
  return -ENOMEM;
 cfpkt_addbdy(pkt, CFCTRL_CMD_LINK_DESTROY);
 cfpkt_addbdy(pkt, channelid);
 init_info(cfpkt_info(pkt), cfctrl);
 cfpkt_set_prio(pkt, TC_PRIO_CONTROL);
 ret =
     dn->transmit(dn, pkt);

 cfctrl->loop_linkused[channelid] = 0;

 return ret;
}
