
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gnpts_pkt {int rx_os_err; int rx_us_err; int rx_channel_err; int rx_dropped; int rx_pkts; int tx_us_err; int tx_channel_err; int tx_dropped; int tx_pkts; TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_stats {void* pt_rx_os_err; void* pt_rx_us_err; void* pt_rx_channel_err; void* pt_rx_dropped; void* pt_rx_pkts; void* pt_tx_us_err; void* pt_tx_channel_err; void* pt_tx_dropped; void* pt_tx_pkts; } ;
struct ncsi_channel {struct ncsi_channel_stats stats; } ;


 int ENODEV ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_gnpts(struct ncsi_request *nr)
{
 struct ncsi_rsp_gnpts_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_stats *ncs;


 rsp = (struct ncsi_rsp_gnpts_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;


 ncs = &nc->stats;
 ncs->pt_tx_pkts = ntohl(rsp->tx_pkts);
 ncs->pt_tx_dropped = ntohl(rsp->tx_dropped);
 ncs->pt_tx_channel_err = ntohl(rsp->tx_channel_err);
 ncs->pt_tx_us_err = ntohl(rsp->tx_us_err);
 ncs->pt_rx_pkts = ntohl(rsp->rx_pkts);
 ncs->pt_rx_dropped = ntohl(rsp->rx_dropped);
 ncs->pt_rx_channel_err = ntohl(rsp->rx_channel_err);
 ncs->pt_rx_us_err = ntohl(rsp->rx_us_err);
 ncs->pt_rx_os_err = ntohl(rsp->rx_os_err);

 return 0;
}
