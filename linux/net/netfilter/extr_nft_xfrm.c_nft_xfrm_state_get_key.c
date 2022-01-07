
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int in6; int a4; } ;
struct TYPE_9__ {int spi; TYPE_1__ daddr; } ;
struct TYPE_7__ {int in6; int a4; } ;
struct TYPE_8__ {int reqid; TYPE_2__ saddr; int mode; int family; } ;
struct xfrm_state {TYPE_4__ id; TYPE_3__ props; } ;
struct nft_xfrm {size_t dreg; int key; } ;
struct TYPE_10__ {void* code; } ;
struct nft_regs {TYPE_5__ verdict; int * data; } ;
struct in6_addr {int dummy; } ;


 void* NFT_BREAK ;







 int WARN_ON_ONCE (int) ;

 int memcpy (int *,int *,int) ;
 int xfrm_state_addr_ok (int,int ,int ) ;

__attribute__((used)) static void nft_xfrm_state_get_key(const struct nft_xfrm *priv,
       struct nft_regs *regs,
       const struct xfrm_state *state)
{
 u32 *dest = &regs->data[priv->dreg];

 if (!xfrm_state_addr_ok(priv->key,
    state->props.family,
    state->props.mode)) {
  regs->verdict.code = NFT_BREAK;
  return;
 }

 switch (priv->key) {
 case 129:
 case 128:
  WARN_ON_ONCE(1);
  break;
 case 135:
  *dest = state->id.daddr.a4;
  return;
 case 134:
  memcpy(dest, &state->id.daddr.in6, sizeof(struct in6_addr));
  return;
 case 132:
  *dest = state->props.saddr.a4;
  return;
 case 131:
  memcpy(dest, &state->props.saddr.in6, sizeof(struct in6_addr));
  return;
 case 133:
  *dest = state->props.reqid;
  return;
 case 130:
  *dest = state->id.spi;
  return;
 }

 regs->verdict.code = NFT_BREAK;
}
