
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {scalar_t__* saved_syn; } ;
struct TYPE_2__ {scalar_t__ save_syn; } ;


 int GFP_ATOMIC ;
 scalar_t__* kmalloc (scalar_t__,int ) ;
 int memcpy (scalar_t__*,int ,scalar_t__) ;
 int skb_network_header (struct sk_buff const*) ;
 scalar_t__ skb_network_header_len (struct sk_buff const*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff const*) ;
 TYPE_1__* tcp_sk (struct sock const*) ;

__attribute__((used)) static void tcp_reqsk_record_syn(const struct sock *sk,
     struct request_sock *req,
     const struct sk_buff *skb)
{
 if (tcp_sk(sk)->save_syn) {
  u32 len = skb_network_header_len(skb) + tcp_hdrlen(skb);
  u32 *copy;

  copy = kmalloc(len + sizeof(u32), GFP_ATOMIC);
  if (copy) {
   copy[0] = len;
   memcpy(&copy[1], skb_network_header(skb), len);
   req->saved_syn = copy;
  }
 }
}
