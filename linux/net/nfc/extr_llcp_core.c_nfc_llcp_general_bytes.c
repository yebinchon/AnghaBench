
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_llcp_local {size_t gb_len; int * gb; } ;
struct nfc_dev {int dummy; } ;


 int nfc_llcp_build_gb (struct nfc_llcp_local*) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;

u8 *nfc_llcp_general_bytes(struct nfc_dev *dev, size_t *general_bytes_len)
{
 struct nfc_llcp_local *local;

 local = nfc_llcp_find_local(dev);
 if (local == ((void*)0)) {
  *general_bytes_len = 0;
  return ((void*)0);
 }

 nfc_llcp_build_gb(local);

 *general_bytes_len = local->gb_len;

 return local->gb;
}
