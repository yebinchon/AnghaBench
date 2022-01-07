
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* prev; struct TYPE_2__* next; } ;
struct rds_sock {TYPE_1__ rs_item; } ;


 int WARN_ON (int) ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;

__attribute__((used)) static void rds_sock_destruct(struct sock *sk)
{
 struct rds_sock *rs = rds_sk_to_rs(sk);

 WARN_ON((&rs->rs_item != rs->rs_item.next ||
   &rs->rs_item != rs->rs_item.prev));
}
