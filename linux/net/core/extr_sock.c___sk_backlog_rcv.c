
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;
struct sk_buff {int dummy; } ;


 int BUG_ON (int) ;
 int SOCK_MEMALLOC ;
 int memalloc_noreclaim_restore (unsigned int) ;
 unsigned int memalloc_noreclaim_save () ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,struct sk_buff*) ;

int __sk_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 int ret;
 unsigned int noreclaim_flag;


 BUG_ON(!sock_flag(sk, SOCK_MEMALLOC));

 noreclaim_flag = memalloc_noreclaim_save();
 ret = sk->sk_backlog_rcv(sk, skb);
 memalloc_noreclaim_restore(noreclaim_flag);

 return ret;
}
