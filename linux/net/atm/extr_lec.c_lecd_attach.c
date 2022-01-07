
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct lec_priv {int itfnum; int maximum_unknown_frame_count; int max_unknown_frame_time; int vcc_timeout_period; int max_retry_count; int aging_time; int forward_delay_time; int arp_response_time; int flush_timeout; int path_switching_delay; scalar_t__ topology_change; struct atm_vcc* lecd; } ;
struct atm_vcc {int flags; TYPE_1__* proto_data; int * dev; } ;
struct TYPE_7__ {int max_mtu; int flags; int name; int * netdev_ops; } ;


 int ATM_VF_META ;
 int ATM_VF_READY ;
 int EADDRINUSE ;
 int EINVAL ;
 int ENOMEM ;
 int HZ ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int MAX_LEC_ITF ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 TYPE_1__* alloc_etherdev (int) ;
 int array_index_nospec (int,int) ;
 TYPE_1__** dev_lec ;
 int free_netdev (TYPE_1__*) ;
 int lec_arp_init (struct lec_priv*) ;
 int lec_netdev_ops ;
 int lecatm_dev ;
 struct lec_priv* netdev_priv (TYPE_1__*) ;
 int netif_start_queue (TYPE_1__*) ;
 scalar_t__ register_netdev (TYPE_1__*) ;
 int set_bit (int ,int *) ;
 int sk_atm (struct atm_vcc*) ;
 int snprintf (int ,int ,char*,int) ;
 int vcc_insert_socket (int ) ;

__attribute__((used)) static int lecd_attach(struct atm_vcc *vcc, int arg)
{
 int i;
 struct lec_priv *priv;

 if (arg < 0)
  arg = 0;
 if (arg >= MAX_LEC_ITF)
  return -EINVAL;
 i = array_index_nospec(arg, MAX_LEC_ITF);
 if (!dev_lec[i]) {
  int size;

  size = sizeof(struct lec_priv);
  dev_lec[i] = alloc_etherdev(size);
  if (!dev_lec[i])
   return -ENOMEM;
  dev_lec[i]->netdev_ops = &lec_netdev_ops;
  dev_lec[i]->max_mtu = 18190;
  snprintf(dev_lec[i]->name, IFNAMSIZ, "lec%d", i);
  if (register_netdev(dev_lec[i])) {
   free_netdev(dev_lec[i]);
   return -EINVAL;
  }

  priv = netdev_priv(dev_lec[i]);
 } else {
  priv = netdev_priv(dev_lec[i]);
  if (priv->lecd)
   return -EADDRINUSE;
 }
 lec_arp_init(priv);
 priv->itfnum = i;
 priv->lecd = vcc;
 vcc->dev = &lecatm_dev;
 vcc_insert_socket(sk_atm(vcc));

 vcc->proto_data = dev_lec[i];
 set_bit(ATM_VF_META, &vcc->flags);
 set_bit(ATM_VF_READY, &vcc->flags);


 priv->maximum_unknown_frame_count = 1;
 priv->max_unknown_frame_time = (1 * HZ);
 priv->vcc_timeout_period = (1200 * HZ);
 priv->max_retry_count = 1;
 priv->aging_time = (300 * HZ);
 priv->forward_delay_time = (15 * HZ);
 priv->topology_change = 0;
 priv->arp_response_time = (1 * HZ);
 priv->flush_timeout = (4 * HZ);
 priv->path_switching_delay = (6 * HZ);

 if (dev_lec[i]->flags & IFF_UP)
  netif_start_queue(dev_lec[i]);
 __module_get(THIS_MODULE);
 return i;
}
