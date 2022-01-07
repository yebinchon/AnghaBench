
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct nfc_llcp_sdp_tlv {size_t tlv_len; int* tlv; int* uri; int node; int time; void* tid; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int LLCP_TLV_SDREQ ;
 int U8_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int jiffies ;
 int kfree (struct nfc_llcp_sdp_tlv*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int*,char*,size_t) ;
 int pr_debug (char*,char*,size_t) ;

struct nfc_llcp_sdp_tlv *nfc_llcp_build_sdreq_tlv(u8 tid, char *uri,
        size_t uri_len)
{
 struct nfc_llcp_sdp_tlv *sdreq;

 pr_debug("uri: %s, len: %zu\n", uri, uri_len);


 if (WARN_ON_ONCE(uri_len > U8_MAX - 4))
  return ((void*)0);

 sdreq = kzalloc(sizeof(struct nfc_llcp_sdp_tlv), GFP_KERNEL);
 if (sdreq == ((void*)0))
  return ((void*)0);

 sdreq->tlv_len = uri_len + 3;

 if (uri[uri_len - 1] == 0)
  sdreq->tlv_len--;

 sdreq->tlv = kzalloc(sdreq->tlv_len + 1, GFP_KERNEL);
 if (sdreq->tlv == ((void*)0)) {
  kfree(sdreq);
  return ((void*)0);
 }

 sdreq->tlv[0] = LLCP_TLV_SDREQ;
 sdreq->tlv[1] = sdreq->tlv_len - 2;
 sdreq->tlv[2] = tid;

 sdreq->tid = tid;
 sdreq->uri = sdreq->tlv + 3;
 memcpy(sdreq->uri, uri, uri_len);

 sdreq->time = jiffies;

 INIT_HLIST_NODE(&sdreq->node);

 return sdreq;
}
