
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int sbits6; int dbits6; int sbits4; int dbits4; } ;





__attribute__((used)) static void __get_hash_thresh(struct net *net,
         unsigned short family, int dir,
         u8 *dbits, u8 *sbits)
{
 switch (family) {
 case 129:
  *dbits = net->xfrm.policy_bydst[dir].dbits4;
  *sbits = net->xfrm.policy_bydst[dir].sbits4;
  break;

 case 128:
  *dbits = net->xfrm.policy_bydst[dir].dbits6;
  *sbits = net->xfrm.policy_bydst[dir].sbits6;
  break;

 default:
  *dbits = 0;
  *sbits = 0;
 }
}
