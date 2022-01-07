
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ revision; int length; } ;
struct ncsi_rsp_pkt_hdr {int reason; int code; TYPE_1__ common; } ;
struct ncsi_request {TYPE_3__* ndp; int rsp; } ;
typedef unsigned short __be32 ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_2__ ndev; } ;


 int ALIGN (unsigned short,int) ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ NCSI_PKT_REVISION ;
 unsigned short NCSI_PKT_RSP_C_COMPLETED ;
 unsigned short NCSI_PKT_RSP_R_NO_ERROR ;
 unsigned short htonl (int ) ;
 int ncsi_calculate_checksum (unsigned char*,int) ;
 int netdev_dbg (int ,char*,...) ;
 scalar_t__ ntohl (unsigned short) ;
 unsigned short ntohs (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_validate_rsp_pkt(struct ncsi_request *nr,
     unsigned short payload)
{
 struct ncsi_rsp_pkt_hdr *h;
 u32 checksum;
 __be32 *pchecksum;





 h = (struct ncsi_rsp_pkt_hdr *)skb_network_header(nr->rsp);

 if (h->common.revision != NCSI_PKT_REVISION) {
  netdev_dbg(nr->ndp->ndev.dev,
      "NCSI: unsupported header revision\n");
  return -EINVAL;
 }
 if (ntohs(h->common.length) != payload) {
  netdev_dbg(nr->ndp->ndev.dev,
      "NCSI: payload length mismatched\n");
  return -EINVAL;
 }


 if (ntohs(h->code) != NCSI_PKT_RSP_C_COMPLETED ||
     ntohs(h->reason) != NCSI_PKT_RSP_R_NO_ERROR) {
  netdev_dbg(nr->ndp->ndev.dev,
      "NCSI: non zero response/reason code %04xh, %04xh\n",
       ntohs(h->code), ntohs(h->reason));
  return -EPERM;
 }





 pchecksum = (__be32 *)((void *)(h + 1) + ALIGN(payload, 4) - 4);
 if (ntohl(*pchecksum) == 0)
  return 0;

 checksum = ncsi_calculate_checksum((unsigned char *)h,
        sizeof(*h) + payload - 4);

 if (*pchecksum != htonl(checksum)) {
  netdev_dbg(nr->ndp->ndev.dev,
      "NCSI: checksum mismatched; recd: %08x calc: %08x\n",
      *pchecksum, htonl(checksum));
  return -EINVAL;
 }

 return 0;
}
