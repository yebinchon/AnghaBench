
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_sdp_tlv {struct nfc_llcp_sdp_tlv* tlv; } ;


 int kfree (struct nfc_llcp_sdp_tlv*) ;

void nfc_llcp_free_sdp_tlv(struct nfc_llcp_sdp_tlv *sdp)
{
 kfree(sdp->tlv);
 kfree(sdp);
}
