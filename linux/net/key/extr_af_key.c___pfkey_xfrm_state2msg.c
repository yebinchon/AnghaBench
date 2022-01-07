
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint64_t ;
struct TYPE_11__ {int flags; int reqid; int mode; int family; int saddr; int replay_window; } ;
struct TYPE_18__ {int sport; int saddr; void* prefixlen_s; int proto; } ;
struct TYPE_17__ {int daddr; int spi; } ;
struct TYPE_16__ {int use_time; int add_time; void* bytes; void* packets; } ;
struct TYPE_15__ {int soft_use_expires_seconds; int soft_add_expires_seconds; int soft_byte_limit; int soft_packet_limit; int hard_use_expires_seconds; int hard_add_expires_seconds; int hard_byte_limit; int hard_packet_limit; } ;
struct TYPE_12__ {int state; int dying; } ;
struct xfrm_state {TYPE_10__ props; TYPE_9__* ealg; TYPE_8__* aalg; TYPE_7__ sel; TYPE_6__ id; TYPE_5__ curlft; TYPE_4__ lft; TYPE_2__* calg; TYPE_1__ km; struct xfrm_encap_tmpl* encap; struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_len; int ctx_str; int ctx_alg; int ctx_doi; } ;
struct xfrm_encap_tmpl {int encap_dport; int encap_sport; scalar_t__ encap_type; } ;
struct TYPE_14__ {scalar_t__ sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_3__ desc; scalar_t__ pfkey_supported; } ;
struct sockaddr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_sec_ctx {int sadb_key_len; int sadb_key_bits; int sadb_x_sec_len; int sadb_x_ctx_len; int sadb_x_ctx_alg; int sadb_x_ctx_doi; int sadb_x_sec_exttype; scalar_t__ sadb_key_reserved; int sadb_key_exttype; } ;
struct sadb_x_sa2 {int sadb_x_sa2_len; int sadb_x_sa2_mode; int sadb_x_sa2_reqid; scalar_t__ sadb_x_sa2_sequence; scalar_t__ sadb_x_sa2_reserved2; scalar_t__ sadb_x_sa2_reserved1; int sadb_x_sa2_exttype; } ;
struct sadb_x_nat_t_type {int sadb_x_nat_t_type_len; scalar_t__* sadb_x_nat_t_type_reserved; scalar_t__ sadb_x_nat_t_type_type; int sadb_x_nat_t_type_exttype; } ;
struct sadb_x_nat_t_port {int sadb_x_nat_t_port_len; scalar_t__ sadb_x_nat_t_port_reserved; int sadb_x_nat_t_port_port; int sadb_x_nat_t_port_exttype; } ;
struct sadb_sa {int sadb_sa_len; int sadb_sa_flags; scalar_t__ sadb_sa_encrypt; scalar_t__ sadb_sa_auth; int sadb_sa_state; int sadb_sa_replay; int sadb_sa_spi; int sadb_sa_exttype; } ;
struct sadb_msg {int sadb_msg_len; } ;
struct sadb_lifetime {int sadb_lifetime_len; int sadb_lifetime_usetime; int sadb_lifetime_addtime; void* sadb_lifetime_bytes; void* sadb_lifetime_allocations; int sadb_lifetime_exttype; } ;
struct sadb_key {int sadb_key_len; int sadb_key_bits; int sadb_x_sec_len; int sadb_x_ctx_len; int sadb_x_ctx_alg; int sadb_x_ctx_doi; int sadb_x_sec_exttype; scalar_t__ sadb_key_reserved; int sadb_key_exttype; } ;
struct sadb_address {int sadb_address_len; scalar_t__ sadb_address_reserved; void* sadb_address_prefixlen; scalar_t__ sadb_address_proto; int sadb_address_exttype; } ;
struct TYPE_20__ {int alg_key_len; int alg_key; int alg_name; } ;
struct TYPE_19__ {int alg_key_len; int alg_key; int alg_name; } ;
struct TYPE_13__ {int alg_name; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOBUFS ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int PFKEY_ALIGN8 (int) ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_PROXY ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_EXT_KEY_AUTH ;
 int SADB_EXT_KEY_ENCRYPT ;
 int SADB_EXT_LIFETIME_CURRENT ;
 int SADB_EXT_LIFETIME_HARD ;
 int SADB_EXT_LIFETIME_SOFT ;
 int SADB_EXT_SA ;
 int SADB_SAFLAGS_DECAP_DSCP ;
 int SADB_SAFLAGS_NOECN ;
 int SADB_SAFLAGS_NOPMTUDISC ;
 int SADB_SASTATE_DEAD ;
 int SADB_SASTATE_DYING ;
 int SADB_SASTATE_LARVAL ;
 int SADB_SASTATE_MATURE ;
 int SADB_X_EXT_NAT_T_DPORT ;
 int SADB_X_EXT_NAT_T_SPORT ;
 int SADB_X_EXT_NAT_T_TYPE ;
 int SADB_X_EXT_SA2 ;
 int SADB_X_EXT_SEC_CTX ;

 int XFRM_STATE_DECAP_DSCP ;
 int XFRM_STATE_NOECN ;
 int XFRM_STATE_NOPMTUDISC ;

 void* _X2KEY (int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct sadb_x_sec_ctx*,int ,int) ;
 int memset (struct sadb_msg*,int ,int) ;
 int pfkey_mode_from_xfrm (int ) ;
 scalar_t__ pfkey_proto_from_xfrm (int ) ;
 void* pfkey_sockaddr_fill (int *,int ,struct sockaddr*,int ) ;
 int pfkey_sockaddr_size (int ) ;
 void* skb_put (struct sk_buff*,int) ;
 struct xfrm_algo_desc* xfrm_aalg_get_byname (int ,int ) ;
 int xfrm_addr_equal (int *,int *,int ) ;
 struct xfrm_algo_desc* xfrm_calg_get_byname (int ,int ) ;
 struct xfrm_algo_desc* xfrm_ealg_get_byname (int ,int ) ;

__attribute__((used)) static struct sk_buff *__pfkey_xfrm_state2msg(const struct xfrm_state *x,
           int add_keys, int hsc)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;
 struct sadb_sa *sa;
 struct sadb_lifetime *lifetime;
 struct sadb_address *addr;
 struct sadb_key *key;
 struct sadb_x_sa2 *sa2;
 struct sadb_x_sec_ctx *sec_ctx;
 struct xfrm_sec_ctx *xfrm_ctx;
 int ctx_size = 0;
 int size;
 int auth_key_size = 0;
 int encrypt_key_size = 0;
 int sockaddr_size;
 struct xfrm_encap_tmpl *natt = ((void*)0);
 int mode;


 sockaddr_size = pfkey_sockaddr_size(x->props.family);
 if (!sockaddr_size)
  return ERR_PTR(-EINVAL);



 size = sizeof(struct sadb_msg) +sizeof(struct sadb_sa) +
  sizeof(struct sadb_lifetime) +
  ((hsc & 1) ? sizeof(struct sadb_lifetime) : 0) +
  ((hsc & 2) ? sizeof(struct sadb_lifetime) : 0) +
   sizeof(struct sadb_address)*2 +
    sockaddr_size*2 +
     sizeof(struct sadb_x_sa2);

 if ((xfrm_ctx = x->security)) {
  ctx_size = PFKEY_ALIGN8(xfrm_ctx->ctx_len);
  size += sizeof(struct sadb_x_sec_ctx) + ctx_size;
 }


 if (!xfrm_addr_equal(&x->sel.saddr, &x->props.saddr, x->props.family))
  size += sizeof(struct sadb_address) + sockaddr_size;

 if (add_keys) {
  if (x->aalg && x->aalg->alg_key_len) {
   auth_key_size =
    PFKEY_ALIGN8((x->aalg->alg_key_len + 7) / 8);
   size += sizeof(struct sadb_key) + auth_key_size;
  }
  if (x->ealg && x->ealg->alg_key_len) {
   encrypt_key_size =
    PFKEY_ALIGN8((x->ealg->alg_key_len+7) / 8);
   size += sizeof(struct sadb_key) + encrypt_key_size;
  }
 }
 if (x->encap)
  natt = x->encap;

 if (natt && natt->encap_type) {
  size += sizeof(struct sadb_x_nat_t_type);
  size += sizeof(struct sadb_x_nat_t_port);
  size += sizeof(struct sadb_x_nat_t_port);
 }

 skb = alloc_skb(size + 16, GFP_ATOMIC);
 if (skb == ((void*)0))
  return ERR_PTR(-ENOBUFS);


 hdr = skb_put(skb, sizeof(struct sadb_msg));
 memset(hdr, 0, size);
 hdr->sadb_msg_len = size / sizeof(uint64_t);


 sa = skb_put(skb, sizeof(struct sadb_sa));
 sa->sadb_sa_len = sizeof(struct sadb_sa)/sizeof(uint64_t);
 sa->sadb_sa_exttype = SADB_EXT_SA;
 sa->sadb_sa_spi = x->id.spi;
 sa->sadb_sa_replay = x->props.replay_window;
 switch (x->km.state) {
 case 128:
  sa->sadb_sa_state = x->km.dying ?
   SADB_SASTATE_DYING : SADB_SASTATE_MATURE;
  break;
 case 129:
  sa->sadb_sa_state = SADB_SASTATE_LARVAL;
  break;
 default:
  sa->sadb_sa_state = SADB_SASTATE_DEAD;
  break;
 }
 sa->sadb_sa_auth = 0;
 if (x->aalg) {
  struct xfrm_algo_desc *a = xfrm_aalg_get_byname(x->aalg->alg_name, 0);
  sa->sadb_sa_auth = (a && a->pfkey_supported) ?
     a->desc.sadb_alg_id : 0;
 }
 sa->sadb_sa_encrypt = 0;
 BUG_ON(x->ealg && x->calg);
 if (x->ealg) {
  struct xfrm_algo_desc *a = xfrm_ealg_get_byname(x->ealg->alg_name, 0);
  sa->sadb_sa_encrypt = (a && a->pfkey_supported) ?
     a->desc.sadb_alg_id : 0;
 }

 if (x->calg) {
  struct xfrm_algo_desc *a = xfrm_calg_get_byname(x->calg->alg_name, 0);
  sa->sadb_sa_encrypt = (a && a->pfkey_supported) ?
     a->desc.sadb_alg_id : 0;
 }

 sa->sadb_sa_flags = 0;
 if (x->props.flags & XFRM_STATE_NOECN)
  sa->sadb_sa_flags |= SADB_SAFLAGS_NOECN;
 if (x->props.flags & XFRM_STATE_DECAP_DSCP)
  sa->sadb_sa_flags |= SADB_SAFLAGS_DECAP_DSCP;
 if (x->props.flags & XFRM_STATE_NOPMTUDISC)
  sa->sadb_sa_flags |= SADB_SAFLAGS_NOPMTUDISC;


 if (hsc & 2) {
  lifetime = skb_put(skb, sizeof(struct sadb_lifetime));
  lifetime->sadb_lifetime_len =
   sizeof(struct sadb_lifetime)/sizeof(uint64_t);
  lifetime->sadb_lifetime_exttype = SADB_EXT_LIFETIME_HARD;
  lifetime->sadb_lifetime_allocations = _X2KEY(x->lft.hard_packet_limit);
  lifetime->sadb_lifetime_bytes = _X2KEY(x->lft.hard_byte_limit);
  lifetime->sadb_lifetime_addtime = x->lft.hard_add_expires_seconds;
  lifetime->sadb_lifetime_usetime = x->lft.hard_use_expires_seconds;
 }

 if (hsc & 1) {
  lifetime = skb_put(skb, sizeof(struct sadb_lifetime));
  lifetime->sadb_lifetime_len =
   sizeof(struct sadb_lifetime)/sizeof(uint64_t);
  lifetime->sadb_lifetime_exttype = SADB_EXT_LIFETIME_SOFT;
  lifetime->sadb_lifetime_allocations = _X2KEY(x->lft.soft_packet_limit);
  lifetime->sadb_lifetime_bytes = _X2KEY(x->lft.soft_byte_limit);
  lifetime->sadb_lifetime_addtime = x->lft.soft_add_expires_seconds;
  lifetime->sadb_lifetime_usetime = x->lft.soft_use_expires_seconds;
 }

 lifetime = skb_put(skb, sizeof(struct sadb_lifetime));
 lifetime->sadb_lifetime_len =
  sizeof(struct sadb_lifetime)/sizeof(uint64_t);
 lifetime->sadb_lifetime_exttype = SADB_EXT_LIFETIME_CURRENT;
 lifetime->sadb_lifetime_allocations = x->curlft.packets;
 lifetime->sadb_lifetime_bytes = x->curlft.bytes;
 lifetime->sadb_lifetime_addtime = x->curlft.add_time;
 lifetime->sadb_lifetime_usetime = x->curlft.use_time;

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
 BUG_ON(!addr->sadb_address_prefixlen);


 addr = skb_put(skb, sizeof(struct sadb_address) + sockaddr_size);
 addr->sadb_address_len =
  (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
 addr->sadb_address_exttype = SADB_EXT_ADDRESS_DST;
 addr->sadb_address_proto = 0;
 addr->sadb_address_reserved = 0;

 addr->sadb_address_prefixlen =
  pfkey_sockaddr_fill(&x->id.daddr, 0,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 BUG_ON(!addr->sadb_address_prefixlen);

 if (!xfrm_addr_equal(&x->sel.saddr, &x->props.saddr,
        x->props.family)) {
  addr = skb_put(skb,
          sizeof(struct sadb_address) + sockaddr_size);
  addr->sadb_address_len =
   (sizeof(struct sadb_address)+sockaddr_size)/
   sizeof(uint64_t);
  addr->sadb_address_exttype = SADB_EXT_ADDRESS_PROXY;
  addr->sadb_address_proto =
   pfkey_proto_from_xfrm(x->sel.proto);
  addr->sadb_address_prefixlen = x->sel.prefixlen_s;
  addr->sadb_address_reserved = 0;

  pfkey_sockaddr_fill(&x->sel.saddr, x->sel.sport,
        (struct sockaddr *) (addr + 1),
        x->props.family);
 }


 if (add_keys && auth_key_size) {
  key = skb_put(skb, sizeof(struct sadb_key) + auth_key_size);
  key->sadb_key_len = (sizeof(struct sadb_key) + auth_key_size) /
   sizeof(uint64_t);
  key->sadb_key_exttype = SADB_EXT_KEY_AUTH;
  key->sadb_key_bits = x->aalg->alg_key_len;
  key->sadb_key_reserved = 0;
  memcpy(key + 1, x->aalg->alg_key, (x->aalg->alg_key_len+7)/8);
 }

 if (add_keys && encrypt_key_size) {
  key = skb_put(skb, sizeof(struct sadb_key) + encrypt_key_size);
  key->sadb_key_len = (sizeof(struct sadb_key) +
         encrypt_key_size) / sizeof(uint64_t);
  key->sadb_key_exttype = SADB_EXT_KEY_ENCRYPT;
  key->sadb_key_bits = x->ealg->alg_key_len;
  key->sadb_key_reserved = 0;
  memcpy(key + 1, x->ealg->alg_key,
         (x->ealg->alg_key_len+7)/8);
 }


 sa2 = skb_put(skb, sizeof(struct sadb_x_sa2));
 sa2->sadb_x_sa2_len = sizeof(struct sadb_x_sa2)/sizeof(uint64_t);
 sa2->sadb_x_sa2_exttype = SADB_X_EXT_SA2;
 if ((mode = pfkey_mode_from_xfrm(x->props.mode)) < 0) {
  kfree_skb(skb);
  return ERR_PTR(-EINVAL);
 }
 sa2->sadb_x_sa2_mode = mode;
 sa2->sadb_x_sa2_reserved1 = 0;
 sa2->sadb_x_sa2_reserved2 = 0;
 sa2->sadb_x_sa2_sequence = 0;
 sa2->sadb_x_sa2_reqid = x->props.reqid;

 if (natt && natt->encap_type) {
  struct sadb_x_nat_t_type *n_type;
  struct sadb_x_nat_t_port *n_port;


  n_type = skb_put(skb, sizeof(*n_type));
  n_type->sadb_x_nat_t_type_len = sizeof(*n_type)/sizeof(uint64_t);
  n_type->sadb_x_nat_t_type_exttype = SADB_X_EXT_NAT_T_TYPE;
  n_type->sadb_x_nat_t_type_type = natt->encap_type;
  n_type->sadb_x_nat_t_type_reserved[0] = 0;
  n_type->sadb_x_nat_t_type_reserved[1] = 0;
  n_type->sadb_x_nat_t_type_reserved[2] = 0;


  n_port = skb_put(skb, sizeof(*n_port));
  n_port->sadb_x_nat_t_port_len = sizeof(*n_port)/sizeof(uint64_t);
  n_port->sadb_x_nat_t_port_exttype = SADB_X_EXT_NAT_T_SPORT;
  n_port->sadb_x_nat_t_port_port = natt->encap_sport;
  n_port->sadb_x_nat_t_port_reserved = 0;


  n_port = skb_put(skb, sizeof(*n_port));
  n_port->sadb_x_nat_t_port_len = sizeof(*n_port)/sizeof(uint64_t);
  n_port->sadb_x_nat_t_port_exttype = SADB_X_EXT_NAT_T_DPORT;
  n_port->sadb_x_nat_t_port_port = natt->encap_dport;
  n_port->sadb_x_nat_t_port_reserved = 0;
 }


 if (xfrm_ctx) {
  sec_ctx = skb_put(skb,
      sizeof(struct sadb_x_sec_ctx) + ctx_size);
  sec_ctx->sadb_x_sec_len =
    (sizeof(struct sadb_x_sec_ctx) + ctx_size) / sizeof(uint64_t);
  sec_ctx->sadb_x_sec_exttype = SADB_X_EXT_SEC_CTX;
  sec_ctx->sadb_x_ctx_doi = xfrm_ctx->ctx_doi;
  sec_ctx->sadb_x_ctx_alg = xfrm_ctx->ctx_alg;
  sec_ctx->sadb_x_ctx_len = xfrm_ctx->ctx_len;
  memcpy(sec_ctx + 1, xfrm_ctx->ctx_str,
         xfrm_ctx->ctx_len);
 }

 return skb;
}
