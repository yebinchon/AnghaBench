
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {int len; unsigned char* data; } ;
struct l2tp_tunnel {int debug; int version; int tunnel_id; int name; } ;
struct l2tp_session {int recv_skb; } ;
typedef int __be32 ;
typedef int __be16 ;


 int DUMP_PREFIX_OFFSET ;
 int L2TP_HDRFLAG_L ;
 int L2TP_HDRFLAG_T ;
 int L2TP_HDR_SIZE_MAX ;
 int L2TP_HDR_VER_2 ;
 int L2TP_HDR_VER_3 ;
 int L2TP_HDR_VER_MASK ;
 int L2TP_MSG_DATA ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_push (struct sk_buff*,int) ;
 int l2tp_dbg (struct l2tp_tunnel*,int,char*,int ,int) ;
 int l2tp_info (struct l2tp_tunnel*,int,char*,int ,int,...) ;
 int l2tp_recv_common (struct l2tp_session*,struct sk_buff*,unsigned char*,unsigned char*,int,int) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 struct l2tp_session* l2tp_tunnel_get_session (struct l2tp_tunnel*,int) ;
 scalar_t__ l2tp_v3_ensure_opt_in_linear (struct l2tp_session*,struct sk_buff*,unsigned char**,unsigned char**) ;
 int min (unsigned int,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pr_debug (char*,int ) ;
 int print_hex_dump_bytes (char*,int ,unsigned char*,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static int l2tp_udp_recv_core(struct l2tp_tunnel *tunnel, struct sk_buff *skb)
{
 struct l2tp_session *session = ((void*)0);
 unsigned char *ptr, *optr;
 u16 hdrflags;
 u32 tunnel_id, session_id;
 u16 version;
 int length;




 __skb_pull(skb, sizeof(struct udphdr));


 if (!pskb_may_pull(skb, L2TP_HDR_SIZE_MAX)) {
  l2tp_info(tunnel, L2TP_MSG_DATA,
     "%s: recv short packet (len=%d)\n",
     tunnel->name, skb->len);
  goto error;
 }


 if (tunnel->debug & L2TP_MSG_DATA) {
  length = min(32u, skb->len);
  if (!pskb_may_pull(skb, length))
   goto error;

  pr_debug("%s: recv\n", tunnel->name);
  print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, skb->data, length);
 }


 optr = ptr = skb->data;


 hdrflags = ntohs(*(__be16 *) ptr);


 version = hdrflags & L2TP_HDR_VER_MASK;
 if (version != tunnel->version) {
  l2tp_info(tunnel, L2TP_MSG_DATA,
     "%s: recv protocol version mismatch: got %d expected %d\n",
     tunnel->name, version, tunnel->version);
  goto error;
 }


 length = skb->len;


 if (hdrflags & L2TP_HDRFLAG_T) {
  l2tp_dbg(tunnel, L2TP_MSG_DATA,
    "%s: recv control packet, len=%d\n",
    tunnel->name, length);
  goto error;
 }


 ptr += 2;

 if (tunnel->version == L2TP_HDR_VER_2) {

  if (hdrflags & L2TP_HDRFLAG_L)
   ptr += 2;


  tunnel_id = ntohs(*(__be16 *) ptr);
  ptr += 2;
  session_id = ntohs(*(__be16 *) ptr);
  ptr += 2;
 } else {
  ptr += 2;
  tunnel_id = tunnel->tunnel_id;
  session_id = ntohl(*(__be32 *) ptr);
  ptr += 4;
 }


 session = l2tp_tunnel_get_session(tunnel, session_id);
 if (!session || !session->recv_skb) {
  if (session)
   l2tp_session_dec_refcount(session);


  l2tp_info(tunnel, L2TP_MSG_DATA,
     "%s: no session found (%u/%u). Passing up.\n",
     tunnel->name, tunnel_id, session_id);
  goto error;
 }

 if (tunnel->version == L2TP_HDR_VER_3 &&
     l2tp_v3_ensure_opt_in_linear(session, skb, &ptr, &optr))
  goto error;

 l2tp_recv_common(session, skb, ptr, optr, hdrflags, length);
 l2tp_session_dec_refcount(session);

 return 0;

error:

 __skb_push(skb, sizeof(struct udphdr));

 return 1;
}
