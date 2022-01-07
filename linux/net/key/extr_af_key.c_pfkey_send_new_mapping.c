
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int uint64_t ;
struct TYPE_6__ {int family; int saddr; } ;
struct TYPE_5__ {scalar_t__ proto; int spi; } ;
struct TYPE_4__ {int seq; } ;
struct xfrm_state {TYPE_3__ props; TYPE_2__ id; TYPE_1__ km; struct xfrm_encap_tmpl* encap; } ;
struct xfrm_encap_tmpl {int encap_sport; } ;
struct sockaddr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_nat_t_port {int sadb_x_nat_t_port_len; scalar_t__ sadb_x_nat_t_port_reserved; int sadb_x_nat_t_port_port; int sadb_x_nat_t_port_exttype; } ;
struct sadb_sa {int sadb_sa_len; scalar_t__ sadb_sa_flags; scalar_t__ sadb_sa_encrypt; scalar_t__ sadb_sa_auth; scalar_t__ sadb_sa_state; scalar_t__ sadb_sa_replay; int sadb_sa_spi; int sadb_sa_exttype; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; scalar_t__ sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct sadb_address {int sadb_address_len; void* sadb_address_prefixlen; scalar_t__ sadb_address_reserved; scalar_t__ sadb_address_proto; int sadb_address_exttype; } ;
typedef scalar_t__ __u8 ;
typedef int __be16 ;


 int BROADCAST_REGISTERED ;
 int BUG () ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPROTO_ESP ;
 int PF_KEY_V2 ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_EXT_SA ;
 scalar_t__ SADB_SATYPE_ESP ;
 int SADB_X_EXT_NAT_T_DPORT ;
 int SADB_X_EXT_NAT_T_SPORT ;
 int SADB_X_NAT_T_NEW_MAPPING ;
 struct sk_buff* alloc_skb (int,int ) ;
 int get_acqseq () ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 void* pfkey_sockaddr_fill (int *,int ,struct sockaddr*,int ) ;
 int pfkey_sockaddr_size (int ) ;
 void* skb_put (struct sk_buff*,int) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_send_new_mapping(struct xfrm_state *x, xfrm_address_t *ipaddr, __be16 sport)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;
 struct sadb_sa *sa;
 struct sadb_address *addr;
 struct sadb_x_nat_t_port *n_port;
 int sockaddr_size;
 int size;
 __u8 satype = (x->id.proto == IPPROTO_ESP ? SADB_SATYPE_ESP : 0);
 struct xfrm_encap_tmpl *natt = ((void*)0);

 sockaddr_size = pfkey_sockaddr_size(x->props.family);
 if (!sockaddr_size)
  return -EINVAL;

 if (!satype)
  return -EINVAL;

 if (!x->encap)
  return -EINVAL;

 natt = x->encap;







 size = sizeof(struct sadb_msg) +
  sizeof(struct sadb_sa) +
  (sizeof(struct sadb_address) * 2) +
  (sockaddr_size * 2) +
  (sizeof(struct sadb_x_nat_t_port) * 2);

 skb = alloc_skb(size + 16, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOMEM;

 hdr = skb_put(skb, sizeof(struct sadb_msg));
 hdr->sadb_msg_version = PF_KEY_V2;
 hdr->sadb_msg_type = SADB_X_NAT_T_NEW_MAPPING;
 hdr->sadb_msg_satype = satype;
 hdr->sadb_msg_len = size / sizeof(uint64_t);
 hdr->sadb_msg_errno = 0;
 hdr->sadb_msg_reserved = 0;
 hdr->sadb_msg_seq = x->km.seq = get_acqseq();
 hdr->sadb_msg_pid = 0;


 sa = skb_put(skb, sizeof(struct sadb_sa));
 sa->sadb_sa_len = sizeof(struct sadb_sa)/sizeof(uint64_t);
 sa->sadb_sa_exttype = SADB_EXT_SA;
 sa->sadb_sa_spi = x->id.spi;
 sa->sadb_sa_replay = 0;
 sa->sadb_sa_state = 0;
 sa->sadb_sa_auth = 0;
 sa->sadb_sa_encrypt = 0;
 sa->sadb_sa_flags = 0;


 addr = skb_put(skb, sizeof(struct sadb_address) + sockaddr_size);
 addr->sadb_address_len =
  (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
 addr->sadb_address_exttype = SADB_EXT_ADDRESS_SRC;
 addr->sadb_address_proto = 0;
 addr->sadb_address_reserved = 0;
 addr->sadb_address_prefixlen =
  pfkey_sockaddr_fill(&x->props.saddr, 0,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 if (!addr->sadb_address_prefixlen)
  BUG();


 n_port = skb_put(skb, sizeof(*n_port));
 n_port->sadb_x_nat_t_port_len = sizeof(*n_port)/sizeof(uint64_t);
 n_port->sadb_x_nat_t_port_exttype = SADB_X_EXT_NAT_T_SPORT;
 n_port->sadb_x_nat_t_port_port = natt->encap_sport;
 n_port->sadb_x_nat_t_port_reserved = 0;


 addr = skb_put(skb, sizeof(struct sadb_address) + sockaddr_size);
 addr->sadb_address_len =
  (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
 addr->sadb_address_exttype = SADB_EXT_ADDRESS_DST;
 addr->sadb_address_proto = 0;
 addr->sadb_address_reserved = 0;
 addr->sadb_address_prefixlen =
  pfkey_sockaddr_fill(ipaddr, 0,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 if (!addr->sadb_address_prefixlen)
  BUG();


 n_port = skb_put(skb, sizeof(*n_port));
 n_port->sadb_x_nat_t_port_len = sizeof(*n_port)/sizeof(uint64_t);
 n_port->sadb_x_nat_t_port_exttype = SADB_X_EXT_NAT_T_DPORT;
 n_port->sadb_x_nat_t_port_port = sport;
 n_port->sadb_x_nat_t_port_reserved = 0;

 return pfkey_broadcast(skb, GFP_ATOMIC, BROADCAST_REGISTERED, ((void*)0),
          xs_net(x));
}
