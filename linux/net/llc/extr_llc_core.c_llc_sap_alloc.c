
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int refcnt; int * sk_laddr_hash; int sk_lock; int state; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NULLS_HEAD (int *,int) ;
 int LLC_SAP_STATE_ACTIVE ;
 int LLC_SK_LADDR_HASH_ENTRIES ;
 struct llc_sap* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct llc_sap *llc_sap_alloc(void)
{
 struct llc_sap *sap = kzalloc(sizeof(*sap), GFP_ATOMIC);
 int i;

 if (sap) {

  sap->state = LLC_SAP_STATE_ACTIVE;
  spin_lock_init(&sap->sk_lock);
  for (i = 0; i < LLC_SK_LADDR_HASH_ENTRIES; i++)
   INIT_HLIST_NULLS_HEAD(&sap->sk_laddr_hash[i], i);
  refcount_set(&sap->refcnt, 1);
 }
 return sap;
}
