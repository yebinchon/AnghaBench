
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {int dummy; } ;


 struct sock* __llc_lookup_listener (struct llc_sap*,struct llc_addr*) ;

__attribute__((used)) static struct sock *llc_lookup_listener(struct llc_sap *sap,
     struct llc_addr *laddr)
{
 static struct llc_addr null_addr;
 struct sock *rc = __llc_lookup_listener(sap, laddr);

 if (!rc)
  rc = __llc_lookup_listener(sap, &null_addr);

 return rc;
}
