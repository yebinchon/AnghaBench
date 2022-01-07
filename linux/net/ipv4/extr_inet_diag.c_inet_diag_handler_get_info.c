
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; int sk_protocol; int sk_state; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int idiag_sport; } ;
struct inet_diag_msg {int idiag_state; TYPE_1__ id; } ;
struct inet_diag_handler {int (* idiag_get_info ) (struct sock*,struct inet_diag_msg*,void*) ;scalar_t__ idiag_info_size; } ;
struct TYPE_4__ {int inet_sport; } ;


 int ENOMEM ;
 int INET_DIAG_INFO ;
 int INET_DIAG_PAD ;
 int INET_DIAG_PROTOCOL ;
 scalar_t__ IS_ERR (struct inet_diag_handler const*) ;
 int PTR_ERR (struct inet_diag_handler const*) ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_DIAG_BY_FAMILY ;
 scalar_t__ SOCK_STREAM ;
 struct inet_diag_handler* inet_diag_lock_handler (int ) ;
 int inet_diag_msg_common_fill (struct inet_diag_msg*,struct sock*) ;
 int inet_diag_unlock_handler (struct inet_diag_handler const*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int memset (struct inet_diag_msg*,int ,int) ;
 void* nla_data (struct nlattr*) ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 struct nlattr* nla_reserve_64bit (struct sk_buff*,int ,scalar_t__,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct inet_diag_msg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int stub1 (struct sock*,struct inet_diag_msg*,void*) ;

__attribute__((used)) static
int inet_diag_handler_get_info(struct sk_buff *skb, struct sock *sk)
{
 const struct inet_diag_handler *handler;
 struct nlmsghdr *nlh;
 struct nlattr *attr;
 struct inet_diag_msg *r;
 void *info = ((void*)0);
 int err = 0;

 nlh = nlmsg_put(skb, 0, 0, SOCK_DIAG_BY_FAMILY, sizeof(*r), 0);
 if (!nlh)
  return -ENOMEM;

 r = nlmsg_data(nlh);
 memset(r, 0, sizeof(*r));
 inet_diag_msg_common_fill(r, sk);
 if (sk->sk_type == SOCK_DGRAM || sk->sk_type == SOCK_STREAM)
  r->id.idiag_sport = inet_sk(sk)->inet_sport;
 r->idiag_state = sk->sk_state;

 if ((err = nla_put_u8(skb, INET_DIAG_PROTOCOL, sk->sk_protocol))) {
  nlmsg_cancel(skb, nlh);
  return err;
 }

 handler = inet_diag_lock_handler(sk->sk_protocol);
 if (IS_ERR(handler)) {
  inet_diag_unlock_handler(handler);
  nlmsg_cancel(skb, nlh);
  return PTR_ERR(handler);
 }

 attr = handler->idiag_info_size
  ? nla_reserve_64bit(skb, INET_DIAG_INFO,
        handler->idiag_info_size,
        INET_DIAG_PAD)
  : ((void*)0);
 if (attr)
  info = nla_data(attr);

 handler->idiag_get_info(sk, r, info);
 inet_diag_unlock_handler(handler);

 nlmsg_end(skb, nlh);
 return 0;
}
