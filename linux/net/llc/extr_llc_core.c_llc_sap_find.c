
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int dummy; } ;


 struct llc_sap* __llc_sap_find (unsigned char) ;
 int llc_sap_hold_safe (struct llc_sap*) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

struct llc_sap *llc_sap_find(unsigned char sap_value)
{
 struct llc_sap *sap;

 rcu_read_lock_bh();
 sap = __llc_sap_find(sap_value);
 if (!sap || !llc_sap_hold_safe(sap))
  sap = ((void*)0);
 rcu_read_unlock_bh();
 return sap;
}
