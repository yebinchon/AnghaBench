
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_local {int ref; } ;


 int kref_put (int *,int ) ;
 int local_release ;

int nfc_llcp_local_put(struct nfc_llcp_local *local)
{
 if (local == ((void*)0))
  return 0;

 return kref_put(&local->ref, local_release);
}
