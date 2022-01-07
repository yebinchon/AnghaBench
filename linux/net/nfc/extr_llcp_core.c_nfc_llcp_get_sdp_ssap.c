
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_llcp_sock {scalar_t__ service_name_len; int ssap; int * service_name; } ;
struct nfc_llcp_local {int local_wks; int sdp_lock; } ;


 int BIT (int) ;
 int LLCP_SAP_MAX ;
 int LLCP_SDP_UNBOUND ;
 int LLCP_WKS_NUM_SAP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * nfc_llcp_sock_from_sn (struct nfc_llcp_local*,int *,scalar_t__) ;
 int nfc_llcp_wks_sap (int *,scalar_t__) ;
 int pr_debug (char*,int) ;
 int set_bit (int,int*) ;
 int test_bit (int,int*) ;

u8 nfc_llcp_get_sdp_ssap(struct nfc_llcp_local *local,
    struct nfc_llcp_sock *sock)
{
 mutex_lock(&local->sdp_lock);

 if (sock->service_name != ((void*)0) && sock->service_name_len > 0) {
  int ssap = nfc_llcp_wks_sap(sock->service_name,
         sock->service_name_len);

  if (ssap > 0) {
   pr_debug("WKS %d\n", ssap);


   if (local->local_wks & BIT(ssap)) {
    mutex_unlock(&local->sdp_lock);

    return LLCP_SAP_MAX;
   }

   set_bit(ssap, &local->local_wks);
   mutex_unlock(&local->sdp_lock);

   return ssap;
  }





  if (nfc_llcp_sock_from_sn(local, sock->service_name,
       sock->service_name_len) != ((void*)0)) {
   mutex_unlock(&local->sdp_lock);

   return LLCP_SAP_MAX;
  }

  mutex_unlock(&local->sdp_lock);

  return LLCP_SDP_UNBOUND;

 } else if (sock->ssap != 0 && sock->ssap < LLCP_WKS_NUM_SAP) {
  if (!test_bit(sock->ssap, &local->local_wks)) {
   set_bit(sock->ssap, &local->local_wks);
   mutex_unlock(&local->sdp_lock);

   return sock->ssap;
  }
 }

 mutex_unlock(&local->sdp_lock);

 return LLCP_SAP_MAX;
}
