
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; scalar_t__ sk_state; } ;
struct TYPE_2__ {scalar_t__ lsap; int mac; } ;
struct llc_sock {TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {scalar_t__ lsap; int mac; } ;


 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_LISTEN ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 struct llc_sock* llc_sk (struct sock const*) ;

__attribute__((used)) static inline bool llc_listener_match(const struct llc_sap *sap,
          const struct llc_addr *laddr,
          const struct sock *sk)
{
 struct llc_sock *llc = llc_sk(sk);

 return sk->sk_type == SOCK_STREAM && sk->sk_state == TCP_LISTEN &&
  llc->laddr.lsap == laddr->lsap &&
  ether_addr_equal(llc->laddr.mac, laddr->mac);
}
