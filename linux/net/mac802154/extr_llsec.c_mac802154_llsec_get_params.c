
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_llsec_params {int dummy; } ;
struct mac802154_llsec {int lock; struct ieee802154_llsec_params params; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int mac802154_llsec_get_params(struct mac802154_llsec *sec,
          struct ieee802154_llsec_params *params)
{
 read_lock_bh(&sec->lock);
 *params = sec->params;
 read_unlock_bh(&sec->lock);

 return 0;
}
