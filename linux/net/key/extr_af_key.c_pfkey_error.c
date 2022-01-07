
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
 int BUG_ON (int) ;
 int EINTR ;
 int EINVAL ;
 int ENOBUFS ;
 int ERESTARTNOHAND ;
 int ERESTARTNOINTR ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 struct sk_buff* alloc_skb (int,int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,int ) ;
 int pfkey_hdr_dup (struct sadb_msg*,struct sadb_msg const*) ;
 struct sadb_msg* skb_put (struct sk_buff*,int) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int pfkey_error(const struct sadb_msg *orig, int err, struct sock *sk)
{
 struct sk_buff *skb = alloc_skb(sizeof(struct sadb_msg) + 16, GFP_KERNEL);
 struct sadb_msg *hdr;

 if (!skb)
  return -ENOBUFS;




 err = -err;
 if (err == ERESTARTSYS ||
     err == ERESTARTNOHAND ||
     err == ERESTARTNOINTR)
  err = EINTR;
 if (err >= 512)
  err = EINVAL;
 BUG_ON(err <= 0 || err >= 256);

 hdr = skb_put(skb, sizeof(struct sadb_msg));
 pfkey_hdr_dup(hdr, orig);
 hdr->sadb_msg_errno = (uint8_t) err;
 hdr->sadb_msg_len = (sizeof(struct sadb_msg) /
        sizeof(uint64_t));

 pfkey_broadcast(skb, GFP_KERNEL, BROADCAST_ONE, sk, sock_net(sk));

 return 0;
}
