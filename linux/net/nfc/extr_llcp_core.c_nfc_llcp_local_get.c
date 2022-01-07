
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_local {int ref; } ;


 int kref_get (int *) ;

struct nfc_llcp_local *nfc_llcp_local_get(struct nfc_llcp_local *local)
{
 kref_get(&local->ref);

 return local;
}
