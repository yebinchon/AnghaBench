
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_psock {int sk; } ;
struct sk_buff {int dummy; } ;


 int sk_psock_skb_ingress (struct sk_psock*,struct sk_buff*) ;
 int skb_send_sock_locked (int ,struct sk_buff*,int ,int ) ;

__attribute__((used)) static int sk_psock_handle_skb(struct sk_psock *psock, struct sk_buff *skb,
          u32 off, u32 len, bool ingress)
{
 if (ingress)
  return sk_psock_skb_ingress(psock, skb);
 else
  return skb_send_sock_locked(psock->sk, skb, off, len);
}
