
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct nfc_llcp_sdp_tlv {int node; void* sap; void* tid; int * tlv; int tlv_len; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int LLCP_TLV_SDRES ;
 int kfree (struct nfc_llcp_sdp_tlv*) ;
 struct nfc_llcp_sdp_tlv* kzalloc (int,int ) ;
 int * nfc_llcp_build_tlv (int ,void**,int,int *) ;

struct nfc_llcp_sdp_tlv *nfc_llcp_build_sdres_tlv(u8 tid, u8 sap)
{
 struct nfc_llcp_sdp_tlv *sdres;
 u8 value[2];

 sdres = kzalloc(sizeof(struct nfc_llcp_sdp_tlv), GFP_KERNEL);
 if (sdres == ((void*)0))
  return ((void*)0);

 value[0] = tid;
 value[1] = sap;

 sdres->tlv = nfc_llcp_build_tlv(LLCP_TLV_SDRES, value, 2,
     &sdres->tlv_len);
 if (sdres->tlv == ((void*)0)) {
  kfree(sdres);
  return ((void*)0);
 }

 sdres->tid = tid;
 sdres->sap = sap;

 INIT_HLIST_NODE(&sdres->node);

 return sdres;
}
