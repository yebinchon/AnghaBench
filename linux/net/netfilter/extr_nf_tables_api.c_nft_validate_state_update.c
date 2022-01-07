
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int validate_state; } ;
struct net {TYPE_1__ nft; } ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static void nft_validate_state_update(struct net *net, u8 new_validate_state)
{
 switch (net->nft.validate_state) {
 case 128:
  WARN_ON_ONCE(new_validate_state == 130);
  break;
 case 129:
  break;
 case 130:
  if (new_validate_state == 129)
   return;
 }

 net->nft.validate_state = new_validate_state;
}
