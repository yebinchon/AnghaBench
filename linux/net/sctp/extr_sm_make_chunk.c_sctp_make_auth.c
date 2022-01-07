
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_hmac {scalar_t__ hmac_len; scalar_t__ hmac_id; } ;
struct TYPE_3__ {int auth_hdr; } ;
struct sctp_chunk {int skb; int chunk_end; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_authhdr {void* shkey_id; void* hmac_id; } ;
struct sctp_association {int dummy; } ;
typedef int auth_hdr ;
typedef scalar_t__ __u16 ;
struct TYPE_4__ {void* length; } ;


 int GFP_ATOMIC ;
 int SCTP_CID_AUTH ;
 void* htons (scalar_t__) ;
 scalar_t__ ntohs (void*) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_authhdr*) ;
 struct sctp_hmac* sctp_auth_asoc_get_hmac (struct sctp_association const*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,scalar_t__,int ) ;
 int skb_put_zero (int ,scalar_t__) ;
 int skb_tail_pointer (int ) ;
 scalar_t__ unlikely (int) ;

struct sctp_chunk *sctp_make_auth(const struct sctp_association *asoc,
      __u16 key_id)
{
 struct sctp_authhdr auth_hdr;
 struct sctp_hmac *hmac_desc;
 struct sctp_chunk *retval;


 hmac_desc = sctp_auth_asoc_get_hmac(asoc);
 if (unlikely(!hmac_desc))
  return ((void*)0);

 retval = sctp_make_control(asoc, SCTP_CID_AUTH, 0,
       hmac_desc->hmac_len + sizeof(auth_hdr),
       GFP_ATOMIC);
 if (!retval)
  return ((void*)0);

 auth_hdr.hmac_id = htons(hmac_desc->hmac_id);
 auth_hdr.shkey_id = htons(key_id);

 retval->subh.auth_hdr = sctp_addto_chunk(retval, sizeof(auth_hdr),
       &auth_hdr);

 skb_put_zero(retval->skb, hmac_desc->hmac_len);


 retval->chunk_hdr->length =
  htons(ntohs(retval->chunk_hdr->length) + hmac_desc->hmac_len);
 retval->chunk_end = skb_tail_pointer(retval->skb);

 return retval;
}
