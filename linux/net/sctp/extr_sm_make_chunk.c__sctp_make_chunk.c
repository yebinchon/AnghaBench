
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_chunkhdr {int length; void* flags; void* type; } ;
struct sctp_chunk {void** chunk_end; int auth; struct sctp_chunkhdr* chunk_hdr; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef int gfp_t ;
typedef void* __u8 ;


 int SCTP_MAX_CHUNK_LEN ;
 int SCTP_PAD4 (int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int htons (int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sctp_auth_send_cid (void*,struct sctp_association const*) ;
 struct sctp_chunk* sctp_chunkify (struct sk_buff*,struct sctp_association const*,struct sock*,int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static struct sctp_chunk *_sctp_make_chunk(const struct sctp_association *asoc,
        __u8 type, __u8 flags, int paylen,
        gfp_t gfp)
{
 struct sctp_chunkhdr *chunk_hdr;
 struct sctp_chunk *retval;
 struct sk_buff *skb;
 struct sock *sk;
 int chunklen;

 chunklen = SCTP_PAD4(sizeof(*chunk_hdr) + paylen);
 if (chunklen > SCTP_MAX_CHUNK_LEN)
  goto nodata;


 skb = alloc_skb(chunklen, gfp);
 if (!skb)
  goto nodata;


 chunk_hdr = (struct sctp_chunkhdr *)skb_put(skb, sizeof(*chunk_hdr));
 chunk_hdr->type = type;
 chunk_hdr->flags = flags;
 chunk_hdr->length = htons(sizeof(*chunk_hdr));

 sk = asoc ? asoc->base.sk : ((void*)0);
 retval = sctp_chunkify(skb, asoc, sk, gfp);
 if (!retval) {
  kfree_skb(skb);
  goto nodata;
 }

 retval->chunk_hdr = chunk_hdr;
 retval->chunk_end = ((__u8 *)chunk_hdr) + sizeof(*chunk_hdr);


 if (sctp_auth_send_cid(type, asoc))
  retval->auth = 1;

 return retval;
nodata:
 return ((void*)0);
}
