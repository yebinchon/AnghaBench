
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int tmp ;
struct wpan_dev {int iftype; int min_be; int max_be; int csma_retries; int frame_retries; int promiscuous_mode; int * header_ops; int extended_addr; void* short_addr; void* pan_id; int dsn; int bsn; } ;
struct ieee802154_sub_if_data {TYPE_1__* dev; int sec; int sec_mtx; struct wpan_dev wpan_dev; } ;
typedef enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
struct TYPE_2__ {int needs_free_netdev; int * netdev_ops; int * ml_priv; int priv_destructor; int * header_ops; int dev_addr; } ;


 int BUG () ;
 int IEEE802154_ADDR_BROADCAST ;
 int IEEE802154_PANID_BROADCAST ;


 int atomic_set (int *,int ) ;
 void* cpu_to_le16 (int ) ;
 int get_random_bytes (int *,int) ;
 int ieee802154_be64_to_le64 (int *,int ) ;
 int ieee802154_header_ops ;
 int mac802154_header_ops ;
 int mac802154_llsec_init (int *) ;
 int mac802154_mlme_wpan ;
 int mac802154_monitor_ops ;
 int mac802154_wpan_free ;
 int mac802154_wpan_ops ;
 int mac802154_wpan_update_llsec (TYPE_1__*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int
ieee802154_setup_sdata(struct ieee802154_sub_if_data *sdata,
         enum nl802154_iftype type)
{
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;
 int ret;
 u8 tmp;


 sdata->wpan_dev.iftype = type;

 get_random_bytes(&tmp, sizeof(tmp));
 atomic_set(&wpan_dev->bsn, tmp);
 get_random_bytes(&tmp, sizeof(tmp));
 atomic_set(&wpan_dev->dsn, tmp);


 wpan_dev->min_be = 3;
 wpan_dev->max_be = 5;
 wpan_dev->csma_retries = 4;
 wpan_dev->frame_retries = 3;

 wpan_dev->pan_id = cpu_to_le16(IEEE802154_PANID_BROADCAST);
 wpan_dev->short_addr = cpu_to_le16(IEEE802154_ADDR_BROADCAST);

 switch (type) {
 case 128:
  ieee802154_be64_to_le64(&wpan_dev->extended_addr,
     sdata->dev->dev_addr);

  sdata->dev->header_ops = &mac802154_header_ops;
  sdata->dev->needs_free_netdev = 1;
  sdata->dev->priv_destructor = mac802154_wpan_free;
  sdata->dev->netdev_ops = &mac802154_wpan_ops;
  sdata->dev->ml_priv = &mac802154_mlme_wpan;
  wpan_dev->promiscuous_mode = 0;
  wpan_dev->header_ops = &ieee802154_header_ops;

  mutex_init(&sdata->sec_mtx);

  mac802154_llsec_init(&sdata->sec);
  ret = mac802154_wpan_update_llsec(sdata->dev);
  if (ret < 0)
   return ret;

  break;
 case 129:
  sdata->dev->needs_free_netdev = 1;
  sdata->dev->netdev_ops = &mac802154_monitor_ops;
  wpan_dev->promiscuous_mode = 1;
  break;
 default:
  BUG();
 }

 return 0;
}
