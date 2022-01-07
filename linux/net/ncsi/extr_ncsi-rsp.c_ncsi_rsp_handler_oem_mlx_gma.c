
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; int sa_family; } ;
struct net_device_ops {int (* ndo_set_mac_address ) (struct net_device*,struct sockaddr*) ;} ;
struct net_device {int priv_flags; int type; struct net_device_ops* netdev_ops; } ;
struct ncsi_rsp_oem_pkt {int * data; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct TYPE_2__ {struct net_device* dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; } ;


 int ETH_ALEN ;
 int IFF_LIVE_ADDR_CHANGE ;
 size_t MLX_MAC_ADDR_OFFSET ;
 int memcpy (int ,int *,int ) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ skb_network_header (int ) ;
 int stub1 (struct net_device*,struct sockaddr*) ;

__attribute__((used)) static int ncsi_rsp_handler_oem_mlx_gma(struct ncsi_request *nr)
{
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct net_device *ndev = ndp->ndev.dev;
 const struct net_device_ops *ops = ndev->netdev_ops;
 struct ncsi_rsp_oem_pkt *rsp;
 struct sockaddr saddr;
 int ret = 0;


 rsp = (struct ncsi_rsp_oem_pkt *)skb_network_header(nr->rsp);

 saddr.sa_family = ndev->type;
 ndev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 memcpy(saddr.sa_data, &rsp->data[MLX_MAC_ADDR_OFFSET], ETH_ALEN);
 ret = ops->ndo_set_mac_address(ndev, &saddr);
 if (ret < 0)
  netdev_warn(ndev, "NCSI: 'Writing mac address to device failed\n");

 return ret;
}
