
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gcps_pkt {int rx_jabber_pkts; int rx_runt_pkts; int rx_valid_bytes; int tx_9022_frames; int tx_1522_frames; int tx_1023_frames; int tx_511_frames; int tx_255_frames; int tx_127_frames; int tx_64_frames; int rx_9022_frames; int rx_1522_frames; int rx_1023_frames; int rx_511_frames; int rx_255_frames; int rx_127_frames; int rx_64_frames; int rx_ctl_frames; int e_collision; int l_collision; int tx_m_collision; int tx_s_collision; int tx_pause_xoff; int tx_pause_xon; int rx_pause_xoff; int rx_pause_xon; int jabber_pkts; int runt_pkts; int false_carrier; int align_err; int fcs_err; int tx_bc_pkts; int tx_mc_pkts; int tx_uc_pkts; int rx_bc_pkts; int rx_mc_pkts; int rx_uc_pkts; int tx_bytes; int rx_bytes; int cnt_lo; int cnt_hi; TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_stats {void* hnc_rx_jabber_pkts; void* hnc_rx_runt_pkts; void* hnc_rx_valid_bytes; void* hnc_tx_9022_frames; void* hnc_tx_1522_frames; void* hnc_tx_1023_frames; void* hnc_tx_511_frames; void* hnc_tx_255_frames; void* hnc_tx_127_frames; void* hnc_tx_64_frames; void* hnc_rx_9022_frames; void* hnc_rx_1522_frames; void* hnc_rx_1023_frames; void* hnc_rx_511_frames; void* hnc_rx_255_frames; void* hnc_rx_127_frames; void* hnc_rx_64_frames; void* hnc_rx_ctl_frames; void* hnc_e_collision; void* hnc_l_collision; void* hnc_tx_m_collision; void* hnc_tx_s_collision; void* hnc_tx_pause_xoff; void* hnc_tx_pause_xon; void* hnc_rx_pause_xoff; void* hnc_rx_pause_xon; void* hnc_jabber_pkts; void* hnc_runt_pkts; void* hnc_false_carrier; void* hnc_align_err; void* hnc_fcs_err; void* hnc_tx_bc_pkts; void* hnc_tx_mc_pkts; void* hnc_tx_uc_pkts; void* hnc_rx_bc_pkts; void* hnc_rx_mc_pkts; void* hnc_rx_uc_pkts; void* hnc_tx_bytes; void* hnc_rx_bytes; void* hnc_cnt_lo; void* hnc_cnt_hi; } ;
struct ncsi_channel {struct ncsi_channel_stats stats; } ;


 int ENODEV ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_gcps(struct ncsi_request *nr)
{
 struct ncsi_rsp_gcps_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_stats *ncs;


 rsp = (struct ncsi_rsp_gcps_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;


 ncs = &nc->stats;
 ncs->hnc_cnt_hi = ntohl(rsp->cnt_hi);
 ncs->hnc_cnt_lo = ntohl(rsp->cnt_lo);
 ncs->hnc_rx_bytes = ntohl(rsp->rx_bytes);
 ncs->hnc_tx_bytes = ntohl(rsp->tx_bytes);
 ncs->hnc_rx_uc_pkts = ntohl(rsp->rx_uc_pkts);
 ncs->hnc_rx_mc_pkts = ntohl(rsp->rx_mc_pkts);
 ncs->hnc_rx_bc_pkts = ntohl(rsp->rx_bc_pkts);
 ncs->hnc_tx_uc_pkts = ntohl(rsp->tx_uc_pkts);
 ncs->hnc_tx_mc_pkts = ntohl(rsp->tx_mc_pkts);
 ncs->hnc_tx_bc_pkts = ntohl(rsp->tx_bc_pkts);
 ncs->hnc_fcs_err = ntohl(rsp->fcs_err);
 ncs->hnc_align_err = ntohl(rsp->align_err);
 ncs->hnc_false_carrier = ntohl(rsp->false_carrier);
 ncs->hnc_runt_pkts = ntohl(rsp->runt_pkts);
 ncs->hnc_jabber_pkts = ntohl(rsp->jabber_pkts);
 ncs->hnc_rx_pause_xon = ntohl(rsp->rx_pause_xon);
 ncs->hnc_rx_pause_xoff = ntohl(rsp->rx_pause_xoff);
 ncs->hnc_tx_pause_xon = ntohl(rsp->tx_pause_xon);
 ncs->hnc_tx_pause_xoff = ntohl(rsp->tx_pause_xoff);
 ncs->hnc_tx_s_collision = ntohl(rsp->tx_s_collision);
 ncs->hnc_tx_m_collision = ntohl(rsp->tx_m_collision);
 ncs->hnc_l_collision = ntohl(rsp->l_collision);
 ncs->hnc_e_collision = ntohl(rsp->e_collision);
 ncs->hnc_rx_ctl_frames = ntohl(rsp->rx_ctl_frames);
 ncs->hnc_rx_64_frames = ntohl(rsp->rx_64_frames);
 ncs->hnc_rx_127_frames = ntohl(rsp->rx_127_frames);
 ncs->hnc_rx_255_frames = ntohl(rsp->rx_255_frames);
 ncs->hnc_rx_511_frames = ntohl(rsp->rx_511_frames);
 ncs->hnc_rx_1023_frames = ntohl(rsp->rx_1023_frames);
 ncs->hnc_rx_1522_frames = ntohl(rsp->rx_1522_frames);
 ncs->hnc_rx_9022_frames = ntohl(rsp->rx_9022_frames);
 ncs->hnc_tx_64_frames = ntohl(rsp->tx_64_frames);
 ncs->hnc_tx_127_frames = ntohl(rsp->tx_127_frames);
 ncs->hnc_tx_255_frames = ntohl(rsp->tx_255_frames);
 ncs->hnc_tx_511_frames = ntohl(rsp->tx_511_frames);
 ncs->hnc_tx_1023_frames = ntohl(rsp->tx_1023_frames);
 ncs->hnc_tx_1522_frames = ntohl(rsp->tx_1522_frames);
 ncs->hnc_tx_9022_frames = ntohl(rsp->tx_9022_frames);
 ncs->hnc_rx_valid_bytes = ntohl(rsp->rx_valid_bytes);
 ncs->hnc_rx_runt_pkts = ntohl(rsp->rx_runt_pkts);
 ncs->hnc_rx_jabber_pkts = ntohl(rsp->rx_jabber_pkts);

 return 0;
}
