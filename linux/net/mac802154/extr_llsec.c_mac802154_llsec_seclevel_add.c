
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_llsec_seclevel {int list; } ;
struct mac802154_llsec_seclevel {struct ieee802154_llsec_seclevel level; } ;
struct TYPE_2__ {int security_levels; } ;
struct mac802154_llsec {TYPE_1__ table; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct mac802154_llsec_seclevel* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ llsec_find_seclevel (struct mac802154_llsec*,struct ieee802154_llsec_seclevel const*) ;

int mac802154_llsec_seclevel_add(struct mac802154_llsec *sec,
     const struct ieee802154_llsec_seclevel *sl)
{
 struct mac802154_llsec_seclevel *entry;

 if (llsec_find_seclevel(sec, sl))
  return -EEXIST;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->level = *sl;

 list_add_tail_rcu(&entry->level.list, &sec->table.security_levels);

 return 0;
}
