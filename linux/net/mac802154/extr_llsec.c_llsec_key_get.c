
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac802154_llsec_key {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct mac802154_llsec_key*
llsec_key_get(struct mac802154_llsec_key *key)
{
 kref_get(&key->ref);
 return key;
}
