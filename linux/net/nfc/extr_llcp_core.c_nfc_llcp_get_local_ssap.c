
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfc_llcp_local {int sdp_lock; int local_sap; } ;


 scalar_t__ LLCP_LOCAL_NUM_SAP ;
 scalar_t__ LLCP_LOCAL_SAP_OFFSET ;
 scalar_t__ LLCP_SAP_MAX ;
 scalar_t__ find_first_zero_bit (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (scalar_t__,int *) ;

u8 nfc_llcp_get_local_ssap(struct nfc_llcp_local *local)
{
 u8 local_ssap;

 mutex_lock(&local->sdp_lock);

 local_ssap = find_first_zero_bit(&local->local_sap, LLCP_LOCAL_NUM_SAP);
 if (local_ssap == LLCP_LOCAL_NUM_SAP) {
  mutex_unlock(&local->sdp_lock);
  return LLCP_SAP_MAX;
 }

 set_bit(local_ssap, &local->local_sap);

 mutex_unlock(&local->sdp_lock);

 return local_ssap + LLCP_LOCAL_SAP_OFFSET;
}
