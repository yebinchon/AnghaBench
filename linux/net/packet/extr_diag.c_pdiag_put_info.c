
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct packet_sock {scalar_t__ tp_loss; scalar_t__ has_vnet_hdr; scalar_t__ origdev; scalar_t__ auxdata; scalar_t__ running; int tp_tstamp; int copy_thresh; int tp_reserve; int tp_version; int ifindex; } ;
struct packet_diag_info {int pdi_flags; int pdi_tstamp; int pdi_copy_thresh; int pdi_reserve; int pdi_version; int pdi_index; } ;
typedef int pinfo ;


 int PACKET_DIAG_INFO ;
 int PDI_AUXDATA ;
 int PDI_LOSS ;
 int PDI_ORIGDEV ;
 int PDI_RUNNING ;
 int PDI_VNETHDR ;
 int nla_put (struct sk_buff*,int ,int,struct packet_diag_info*) ;

__attribute__((used)) static int pdiag_put_info(const struct packet_sock *po, struct sk_buff *nlskb)
{
 struct packet_diag_info pinfo;

 pinfo.pdi_index = po->ifindex;
 pinfo.pdi_version = po->tp_version;
 pinfo.pdi_reserve = po->tp_reserve;
 pinfo.pdi_copy_thresh = po->copy_thresh;
 pinfo.pdi_tstamp = po->tp_tstamp;

 pinfo.pdi_flags = 0;
 if (po->running)
  pinfo.pdi_flags |= PDI_RUNNING;
 if (po->auxdata)
  pinfo.pdi_flags |= PDI_AUXDATA;
 if (po->origdev)
  pinfo.pdi_flags |= PDI_ORIGDEV;
 if (po->has_vnet_hdr)
  pinfo.pdi_flags |= PDI_VNETHDR;
 if (po->tp_loss)
  pinfo.pdi_flags |= PDI_LOSS;

 return nla_put(nlskb, PACKET_DIAG_INFO, sizeof(pinfo), &pinfo);
}
