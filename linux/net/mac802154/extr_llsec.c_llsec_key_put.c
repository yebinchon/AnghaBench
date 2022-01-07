
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac802154_llsec_key {int ref; } ;


 int kref_put (int *,int ) ;
 int llsec_key_release ;

__attribute__((used)) static void llsec_key_put(struct mac802154_llsec_key *key)
{
 kref_put(&key->ref, llsec_key_release);
}
