
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct phonetmsg {scalar_t__ pn_status; int pn_msg_id; int pn_orig_msg_id; void* pn_submsg_id; scalar_t__ pn_e_status; int pn_e_orig_msg_id; void* pn_e_submsg_id; int pn_e_res_id; int pn_trans_id; } ;
struct phonethdr {scalar_t__ pn_res; int pn_robj; int pn_rdev; int pn_sobj; int pn_sdev; } ;
typedef int resp ;


 int PN_COMMON_MESSAGE ;
 void* PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP ;
 scalar_t__ PN_PREFIX ;
 int memset (struct phonetmsg*,int ,int) ;
 struct phonethdr* pn_hdr (struct sk_buff*) ;
 struct phonetmsg* pn_msg (struct sk_buff*) ;
 int pn_object (int ,int ) ;
 int pn_raw_send (struct phonetmsg*,int,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int send_obj_unreachable(struct sk_buff *rskb)
{
 const struct phonethdr *oph = pn_hdr(rskb);
 const struct phonetmsg *opm = pn_msg(rskb);
 struct phonetmsg resp;

 memset(&resp, 0, sizeof(resp));
 resp.pn_trans_id = opm->pn_trans_id;
 resp.pn_msg_id = PN_COMMON_MESSAGE;
 if (oph->pn_res == PN_PREFIX) {
  resp.pn_e_res_id = opm->pn_e_res_id;
  resp.pn_e_submsg_id = PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP;
  resp.pn_e_orig_msg_id = opm->pn_msg_id;
  resp.pn_e_status = 0;
 } else {
  resp.pn_submsg_id = PN_COMM_ISA_ENTITY_NOT_REACHABLE_RESP;
  resp.pn_orig_msg_id = opm->pn_msg_id;
  resp.pn_status = 0;
 }
 return pn_raw_send(&resp, sizeof(resp), rskb->dev,
    pn_object(oph->pn_sdev, oph->pn_sobj),
    pn_object(oph->pn_rdev, oph->pn_robj),
    oph->pn_res);
}
