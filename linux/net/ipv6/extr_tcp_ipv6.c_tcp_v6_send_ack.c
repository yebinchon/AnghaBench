
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int tcp_v6_send_response (struct sock const*,struct sk_buff*,int ,int ,int ,int ,int ,int,struct tcp_md5sig_key*,int ,int ,int ,int ) ;

__attribute__((used)) static void tcp_v6_send_ack(const struct sock *sk, struct sk_buff *skb, u32 seq,
       u32 ack, u32 win, u32 tsval, u32 tsecr, int oif,
       struct tcp_md5sig_key *key, u8 tclass,
       __be32 label, u32 priority)
{
 tcp_v6_send_response(sk, skb, seq, ack, win, tsval, tsecr, oif, key, 0,
        tclass, label, priority);
}
