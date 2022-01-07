
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cflayer {int dummy; } ;
struct TYPE_12__ {int paramlen; int* params; scalar_t__ name; void* fifosize_bufs; void* fifosize_kb; } ;
struct TYPE_11__ {scalar_t__ volume; void* connid; } ;
struct TYPE_10__ {void* connid; } ;
struct TYPE_9__ {int connid; } ;
struct TYPE_13__ {TYPE_4__ utility; TYPE_3__ rfm; TYPE_2__ datagram; TYPE_1__ video; } ;
struct cfctrl_link_param {int linktype; int chtype; int priority; int phyid; int endpoint; TYPE_5__ u; } ;
struct cfctrl_request_info {int cmd; int * client_layer; struct cfctrl_link_param param; } ;
struct TYPE_16__ {int (* radioset_rsp ) () ;int (* restart_rsp ) () ;int (* wake_rsp ) () ;int (* sleep_rsp ) () ;int (* enum_rsp ) () ;int (* linkerror_ind ) () ;int (* linkdestroy_rsp ) (int ,int) ;int (* linksetup_rsp ) (int ,int,int,int,int *) ;int (* reject_rsp ) (int ,int ,int *) ;} ;
struct TYPE_14__ {int up; } ;
struct TYPE_15__ {TYPE_6__ layer; } ;
struct cfctrl {TYPE_8__ res; TYPE_7__ serv; int info_list_lock; } ;
typedef int linkparam ;
typedef enum cfctrl_srv { ____Placeholder_cfctrl_srv } cfctrl_srv ;







 int CFCTRL_CMD_MASK ;



 int CFCTRL_ERR_BIT ;
 int CFCTRL_RSP_BIT ;


 int CFCTRL_SRV_MASK ;




 int UTILITY_NAME_LENGTH ;
 int caif_assert (int) ;
 struct cfctrl_request_info* cfctrl_remove_req (struct cfctrl*,struct cfctrl_request_info*) ;
 int cfpkt_destroy (struct cfpkt*) ;
 int cfpkt_erroneous (struct cfpkt*) ;
 int cfpkt_extr_head (struct cfpkt*,int**,int) ;
 void* cfpkt_extr_head_u16 (struct cfpkt*) ;
 void* cfpkt_extr_head_u32 (struct cfpkt*) ;
 int cfpkt_extr_head_u8 (struct cfpkt*) ;
 int cfpkt_more (struct cfpkt*) ;
 struct cfctrl* container_obj (struct cflayer*) ;
 scalar_t__ handle_loop (struct cfctrl*,int,struct cfpkt*) ;
 int kfree (struct cfctrl_request_info*) ;
 int memset (struct cfctrl_link_param*,int ,int) ;
 int pr_err (char*) ;
 int pr_warn (char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int,int,int,int *) ;
 int stub3 (int ,int) ;
 int stub4 () ;
 int stub5 () ;
 int stub6 () ;
 int stub7 () ;
 int stub8 () ;
 int stub9 () ;

__attribute__((used)) static int cfctrl_recv(struct cflayer *layer, struct cfpkt *pkt)
{
 u8 cmdrsp;
 u8 cmd;
 int ret = -1;
 u8 len;
 u8 param[255];
 u8 linkid = 0;
 struct cfctrl *cfctrl = container_obj(layer);
 struct cfctrl_request_info rsp, *req;


 cmdrsp = cfpkt_extr_head_u8(pkt);
 cmd = cmdrsp & CFCTRL_CMD_MASK;
 if (cmd != 139
     && CFCTRL_RSP_BIT != (CFCTRL_RSP_BIT & cmdrsp)
  && CFCTRL_ERR_BIT != (CFCTRL_ERR_BIT & cmdrsp)) {
  if (handle_loop(cfctrl, cmd, pkt) != 0)
   cmdrsp |= CFCTRL_ERR_BIT;
 }

 switch (cmd) {
 case 137:
  {
   enum cfctrl_srv serv;
   enum cfctrl_srv servtype;
   u8 endpoint;
   u8 physlinkid;
   u8 prio;
   u8 tmp;
   u8 *cp;
   int i;
   struct cfctrl_link_param linkparam;
   memset(&linkparam, 0, sizeof(linkparam));

   tmp = cfpkt_extr_head_u8(pkt);

   serv = tmp & CFCTRL_SRV_MASK;
   linkparam.linktype = serv;

   servtype = tmp >> 4;
   linkparam.chtype = servtype;

   tmp = cfpkt_extr_head_u8(pkt);
   physlinkid = tmp & 0x07;
   prio = tmp >> 3;

   linkparam.priority = prio;
   linkparam.phyid = physlinkid;
   endpoint = cfpkt_extr_head_u8(pkt);
   linkparam.endpoint = endpoint & 0x03;

   switch (serv) {
   case 129:
   case 132:
    if (CFCTRL_ERR_BIT & cmdrsp)
     break;

    linkid = cfpkt_extr_head_u8(pkt);
    break;
   case 128:
    tmp = cfpkt_extr_head_u8(pkt);
    linkparam.u.video.connid = tmp;
    if (CFCTRL_ERR_BIT & cmdrsp)
     break;

    linkid = cfpkt_extr_head_u8(pkt);
    break;

   case 133:
    linkparam.u.datagram.connid =
        cfpkt_extr_head_u32(pkt);
    if (CFCTRL_ERR_BIT & cmdrsp)
     break;

    linkid = cfpkt_extr_head_u8(pkt);
    break;
   case 131:




    linkparam.u.rfm.connid =
        cfpkt_extr_head_u32(pkt);
    cp = (u8 *) linkparam.u.rfm.volume;
    for (tmp = cfpkt_extr_head_u8(pkt);
         cfpkt_more(pkt) && tmp != '\0';
         tmp = cfpkt_extr_head_u8(pkt))
     *cp++ = tmp;
    *cp = '\0';

    if (CFCTRL_ERR_BIT & cmdrsp)
     break;

    linkid = cfpkt_extr_head_u8(pkt);

    break;
   case 130:





    linkparam.u.utility.fifosize_kb =
        cfpkt_extr_head_u16(pkt);

    linkparam.u.utility.fifosize_bufs =
        cfpkt_extr_head_u16(pkt);

    cp = (u8 *) linkparam.u.utility.name;
    caif_assert(sizeof(linkparam.u.utility.name)
          >= UTILITY_NAME_LENGTH);
    for (i = 0;
         i < UTILITY_NAME_LENGTH
         && cfpkt_more(pkt); i++) {
     tmp = cfpkt_extr_head_u8(pkt);
     *cp++ = tmp;
    }

    len = cfpkt_extr_head_u8(pkt);
    linkparam.u.utility.paramlen = len;

    cp = linkparam.u.utility.params;
    while (cfpkt_more(pkt) && len--) {
     tmp = cfpkt_extr_head_u8(pkt);
     *cp++ = tmp;
    }
    if (CFCTRL_ERR_BIT & cmdrsp)
     break;

    linkid = cfpkt_extr_head_u8(pkt);

    len = cfpkt_extr_head_u8(pkt);

    cfpkt_extr_head(pkt, &param, len);
    break;
   default:
    pr_warn("Request setup, invalid type (%d)\n",
     serv);
    goto error;
   }

   rsp.cmd = cmd;
   rsp.param = linkparam;
   spin_lock_bh(&cfctrl->info_list_lock);
   req = cfctrl_remove_req(cfctrl, &rsp);

   if (CFCTRL_ERR_BIT == (CFCTRL_ERR_BIT & cmdrsp) ||
    cfpkt_erroneous(pkt)) {
    pr_err("Invalid O/E bit or parse error "
      "on CAIF control channel\n");
    cfctrl->res.reject_rsp(cfctrl->serv.layer.up,
             0,
             req ? req->client_layer
             : ((void*)0));
   } else {
    cfctrl->res.linksetup_rsp(cfctrl->serv.
         layer.up, linkid,
         serv, physlinkid,
         req ? req->
         client_layer : ((void*)0));
   }

   kfree(req);

   spin_unlock_bh(&cfctrl->info_list_lock);
  }
  break;
 case 140:
  linkid = cfpkt_extr_head_u8(pkt);
  cfctrl->res.linkdestroy_rsp(cfctrl->serv.layer.up, linkid);
  break;
 case 139:
  pr_err("Frame Error Indication received\n");
  cfctrl->res.linkerror_ind();
  break;
 case 141:
  cfctrl->res.enum_rsp();
  break;
 case 135:
  cfctrl->res.sleep_rsp();
  break;
 case 134:
  cfctrl->res.wake_rsp();
  break;
 case 138:
  cfctrl->res.restart_rsp();
  break;
 case 136:
  cfctrl->res.radioset_rsp();
  break;
 default:
  pr_err("Unrecognized Control Frame\n");
  goto error;
 }
 ret = 0;
error:
 cfpkt_destroy(pkt);
 return ret;
}
