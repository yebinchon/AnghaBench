
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int vtag; } ;
struct sctp_transport {int dummy; } ;
struct TYPE_7__ {int init_tag; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct sctp_init_chunk {TYPE_3__ init_hdr; TYPE_2__ chunk_hdr; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_8__ {scalar_t__ my_vtag; scalar_t__ peer_vtag; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {TYPE_4__ c; TYPE_1__ base; } ;
struct sctp_af {int (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
struct net {int dummy; } ;
typedef scalar_t__ __u32 ;
typedef int __be32 ;


 int LINUX_MIB_LOCKDROPPEDICMPS ;
 scalar_t__ SCTP_CID_INIT ;
 int __NET_INC_STATS (struct net*,int ) ;
 struct sctp_association* __sctp_lookup_association (struct net*,union sctp_addr*,union sctp_addr*,struct sctp_transport**) ;
 int bh_lock_sock (struct sock*) ;
 scalar_t__ ntohl (int ) ;
 struct sctp_af* sctp_get_af_specific (int) ;
 int sctp_transport_put (struct sctp_transport*) ;
 struct sctp_init_chunk* skb_header_pointer (struct sk_buff*,scalar_t__,int,struct sctp_init_chunk*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (union sctp_addr*,struct sk_buff*,int) ;
 int stub2 (union sctp_addr*,struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

struct sock *sctp_err_lookup(struct net *net, int family, struct sk_buff *skb,
        struct sctphdr *sctphdr,
        struct sctp_association **app,
        struct sctp_transport **tpp)
{
 struct sctp_init_chunk *chunkhdr, _chunkhdr;
 union sctp_addr saddr;
 union sctp_addr daddr;
 struct sctp_af *af;
 struct sock *sk = ((void*)0);
 struct sctp_association *asoc;
 struct sctp_transport *transport = ((void*)0);
 __u32 vtag = ntohl(sctphdr->vtag);

 *app = ((void*)0); *tpp = ((void*)0);

 af = sctp_get_af_specific(family);
 if (unlikely(!af)) {
  return ((void*)0);
 }


 af->from_skb(&saddr, skb, 1);
 af->from_skb(&daddr, skb, 0);




 asoc = __sctp_lookup_association(net, &saddr, &daddr, &transport);
 if (!asoc)
  return ((void*)0);

 sk = asoc->base.sk;
 if (vtag == 0) {

  chunkhdr = skb_header_pointer(skb, skb_transport_offset(skb) +
           sizeof(struct sctphdr),
           sizeof(struct sctp_chunkhdr) +
           sizeof(__be32), &_chunkhdr);
  if (!chunkhdr ||
      chunkhdr->chunk_hdr.type != SCTP_CID_INIT ||
      ntohl(chunkhdr->init_hdr.init_tag) != asoc->c.my_vtag)
   goto out;

 } else if (vtag != asoc->c.peer_vtag) {
  goto out;
 }

 bh_lock_sock(sk);




 if (sock_owned_by_user(sk))
  __NET_INC_STATS(net, LINUX_MIB_LOCKDROPPEDICMPS);

 *app = asoc;
 *tpp = transport;
 return sk;

out:
 sctp_transport_put(transport);
 return ((void*)0);
}
