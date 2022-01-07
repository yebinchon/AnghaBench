
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;


 int BROADCAST_ONE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,int ) ;
 struct sadb_msg* skb_put_data (struct sk_buff*,struct sadb_msg const*,int) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int unicast_flush_resp(struct sock *sk, const struct sadb_msg *ihdr)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;

 skb = alloc_skb(sizeof(struct sadb_msg) + 16, GFP_ATOMIC);
 if (!skb)
  return -ENOBUFS;

 hdr = skb_put_data(skb, ihdr, sizeof(struct sadb_msg));
 hdr->sadb_msg_errno = (uint8_t) 0;
 hdr->sadb_msg_len = (sizeof(struct sadb_msg) / sizeof(uint64_t));

 return pfkey_broadcast(skb, GFP_ATOMIC, BROADCAST_ONE, sk,
          sock_net(sk));
}
