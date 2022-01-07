
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct gprs_dev* sk_user_data; } ;
struct sk_buff {int dummy; } ;
struct gprs_dev {int dummy; } ;


 int gprs_recv (struct gprs_dev*,struct sk_buff*) ;
 struct sk_buff* pep_read (struct sock*) ;
 int skb_orphan (struct sk_buff*) ;

__attribute__((used)) static void gprs_data_ready(struct sock *sk)
{
 struct gprs_dev *gp = sk->sk_user_data;
 struct sk_buff *skb;

 while ((skb = pep_read(sk)) != ((void*)0)) {
  skb_orphan(skb);
  gprs_recv(gp, skb);
 }
}
