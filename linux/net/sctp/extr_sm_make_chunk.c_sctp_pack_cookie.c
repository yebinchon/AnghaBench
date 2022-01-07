
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_17__ {int raw_addr_list_len; TYPE_5__* peer_init; int expiration; int adaptation_ind; int prsctp_capable; } ;
struct sctp_signed_cookie {int signature; TYPE_4__ c; } ;
struct sctp_paramhdr {int dummy; } ;
struct TYPE_16__ {int sk; } ;
struct sctp_endpoint {int secret_key; TYPE_3__ base; } ;
struct TYPE_14__ {int length; int type; } ;
struct sctp_cookie_param {TYPE_1__ p; scalar_t__ body; } ;
struct sctp_cookie {int dummy; } ;
struct sctp_chunk {TYPE_5__ const* chunk_hdr; } ;
struct TYPE_15__ {int adaptation_ind; int prsctp_capable; } ;
struct sctp_association {int cookie_life; TYPE_2__ peer; TYPE_4__ c; } ;
struct TYPE_18__ {int length; } ;
typedef TYPE_5__ __u8 ;
struct TYPE_20__ {scalar_t__ hmac; } ;
struct TYPE_19__ {scalar_t__ tfm; } ;


 int GFP_ATOMIC ;
 int SCTP_COOKIE_MULTIPLE ;
 int SCTP_PARAM_STATE_COOKIE ;
 int SHASH_DESC_ON_STACK (TYPE_6__*,scalar_t__) ;
 int crypto_shash_digest (TYPE_6__*,int *,int,int ) ;
 scalar_t__ crypto_shash_setkey (scalar_t__,int ,int) ;
 TYPE_6__* desc ;
 int htons (int) ;
 int kfree (struct sctp_cookie_param*) ;
 int ktime_add (int ,int ) ;
 int ktime_get_real () ;
 struct sctp_cookie_param* kzalloc (int,int ) ;
 int memcpy (TYPE_5__*,TYPE_5__ const*,int) ;
 int ntohs (int ) ;
 TYPE_7__* sctp_sk (int ) ;
 int shash_desc_zero (TYPE_6__*) ;

__attribute__((used)) static struct sctp_cookie_param *sctp_pack_cookie(
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const struct sctp_chunk *init_chunk,
     int *cookie_len, const __u8 *raw_addrs,
     int addrs_len)
{
 struct sctp_signed_cookie *cookie;
 struct sctp_cookie_param *retval;
 int headersize, bodysize;




 headersize = sizeof(struct sctp_paramhdr) +
       (sizeof(struct sctp_signed_cookie) -
        sizeof(struct sctp_cookie));
 bodysize = sizeof(struct sctp_cookie)
  + ntohs(init_chunk->chunk_hdr->length) + addrs_len;




 if (bodysize % SCTP_COOKIE_MULTIPLE)
  bodysize += SCTP_COOKIE_MULTIPLE
   - (bodysize % SCTP_COOKIE_MULTIPLE);
 *cookie_len = headersize + bodysize;




 retval = kzalloc(*cookie_len, GFP_ATOMIC);
 if (!retval)
  goto nodata;

 cookie = (struct sctp_signed_cookie *) retval->body;


 retval->p.type = SCTP_PARAM_STATE_COOKIE;
 retval->p.length = htons(*cookie_len);


 cookie->c = asoc->c;

 cookie->c.raw_addr_list_len = addrs_len;


 cookie->c.prsctp_capable = asoc->peer.prsctp_capable;


 cookie->c.adaptation_ind = asoc->peer.adaptation_ind;


 cookie->c.expiration = ktime_add(asoc->cookie_life,
      ktime_get_real());


 memcpy(&cookie->c.peer_init[0], init_chunk->chunk_hdr,
        ntohs(init_chunk->chunk_hdr->length));


 memcpy((__u8 *)&cookie->c.peer_init[0] +
        ntohs(init_chunk->chunk_hdr->length), raw_addrs, addrs_len);

 if (sctp_sk(ep->base.sk)->hmac) {
  SHASH_DESC_ON_STACK(desc, sctp_sk(ep->base.sk)->hmac);
  int err;


  desc->tfm = sctp_sk(ep->base.sk)->hmac;

  err = crypto_shash_setkey(desc->tfm, ep->secret_key,
       sizeof(ep->secret_key)) ?:
        crypto_shash_digest(desc, (u8 *)&cookie->c, bodysize,
       cookie->signature);
  shash_desc_zero(desc);
  if (err)
   goto free_cookie;
 }

 return retval;

free_cookie:
 kfree(retval);
nodata:
 *cookie_len = 0;
 return ((void*)0);
}
