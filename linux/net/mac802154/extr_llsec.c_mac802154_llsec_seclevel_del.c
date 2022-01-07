
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mac802154_llsec_seclevel {TYPE_1__ level; } ;
struct mac802154_llsec {int dummy; } ;
struct ieee802154_llsec_seclevel {int dummy; } ;


 int ENOENT ;
 int kfree_rcu (struct mac802154_llsec_seclevel*,int ) ;
 int list_del_rcu (int *) ;
 struct mac802154_llsec_seclevel* llsec_find_seclevel (struct mac802154_llsec*,struct ieee802154_llsec_seclevel const*) ;
 int rcu ;

int mac802154_llsec_seclevel_del(struct mac802154_llsec *sec,
     const struct ieee802154_llsec_seclevel *sl)
{
 struct mac802154_llsec_seclevel *pos;

 pos = llsec_find_seclevel(sec, sl);
 if (!pos)
  return -ENOENT;

 list_del_rcu(&pos->level.list);
 kfree_rcu(pos, rcu);

 return 0;
}
