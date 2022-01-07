
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ lsap; int mac; } ;
struct TYPE_3__ {scalar_t__ lsap; int mac; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {scalar_t__ lsap; int mac; } ;


 scalar_t__ ether_addr_equal (int ,int ) ;
 struct llc_sock* llc_sk (struct sock const*) ;

__attribute__((used)) static inline bool llc_estab_match(const struct llc_sap *sap,
       const struct llc_addr *daddr,
       const struct llc_addr *laddr,
       const struct sock *sk)
{
 struct llc_sock *llc = llc_sk(sk);

 return llc->laddr.lsap == laddr->lsap &&
  llc->daddr.lsap == daddr->lsap &&
  ether_addr_equal(llc->laddr.mac, laddr->mac) &&
  ether_addr_equal(llc->daddr.mac, daddr->mac);
}
