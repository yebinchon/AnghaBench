
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfc_llcp_local {int sdp_lock; int local_sdp; } ;


 scalar_t__ LLCP_SAP_MAX ;
 scalar_t__ LLCP_SDP_NUM_SAP ;
 scalar_t__ LLCP_WKS_NUM_SAP ;
 scalar_t__ find_first_zero_bit (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,scalar_t__) ;
 int set_bit (scalar_t__,int *) ;

__attribute__((used)) static u8 nfc_llcp_reserve_sdp_ssap(struct nfc_llcp_local *local)
{
 u8 ssap;

 mutex_lock(&local->sdp_lock);

 ssap = find_first_zero_bit(&local->local_sdp, LLCP_SDP_NUM_SAP);
 if (ssap == LLCP_SDP_NUM_SAP) {
  mutex_unlock(&local->sdp_lock);

  return LLCP_SAP_MAX;
 }

 pr_debug("SDP ssap %d\n", LLCP_WKS_NUM_SAP + ssap);

 set_bit(ssap, &local->local_sdp);

 mutex_unlock(&local->sdp_lock);

 return LLCP_WKS_NUM_SAP + ssap;
}
