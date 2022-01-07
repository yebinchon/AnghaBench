
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gns_pkt {int tx_aen_pkts; int tx_pkts; int rx_pkts; int cmd_csum_errs; int cmd_type_errs; int dropped_cmds; int rx_cmds; TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_stats {void* ncsi_tx_aen_pkts; void* ncsi_tx_pkts; void* ncsi_rx_pkts; void* ncsi_cmd_csum_errs; void* ncsi_cmd_type_errs; void* ncsi_dropped_cmds; void* ncsi_rx_cmds; } ;
struct ncsi_channel {struct ncsi_channel_stats stats; } ;


 int ENODEV ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_gns(struct ncsi_request *nr)
{
 struct ncsi_rsp_gns_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_stats *ncs;


 rsp = (struct ncsi_rsp_gns_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;


 ncs = &nc->stats;
 ncs->ncsi_rx_cmds = ntohl(rsp->rx_cmds);
 ncs->ncsi_dropped_cmds = ntohl(rsp->dropped_cmds);
 ncs->ncsi_cmd_type_errs = ntohl(rsp->cmd_type_errs);
 ncs->ncsi_cmd_csum_errs = ntohl(rsp->cmd_csum_errs);
 ncs->ncsi_rx_pkts = ntohl(rsp->rx_pkts);
 ncs->ncsi_tx_pkts = ntohl(rsp->tx_pkts);
 ncs->ncsi_tx_aen_pkts = ntohl(rsp->tx_aen_pkts);

 return 0;
}
