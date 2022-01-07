
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_type {scalar_t__ proto; } ;
struct TYPE_4__ {int header_len; int mode; int family; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {TYPE_2__ props; struct crypto_aead* data; TYPE_1__ km; int type; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct crypto_aead {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int ALIGN (int ,int) ;
 scalar_t__ IPPROTO_ESP ;
 struct xfrm_type* READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;



 scalar_t__ XFRM_STATE_VALID ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;

u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
{
 const struct xfrm_type *type = READ_ONCE(x->type);
 struct crypto_aead *aead;
 u32 blksize, net_adj = 0;

 if (x->km.state != XFRM_STATE_VALID ||
     !type || type->proto != IPPROTO_ESP)
  return mtu - x->props.header_len;

 aead = x->data;
 blksize = ALIGN(crypto_aead_blocksize(aead), 4);

 switch (x->props.mode) {
 case 129:
 case 130:
  if (x->props.family == AF_INET)
   net_adj = sizeof(struct iphdr);
  else if (x->props.family == AF_INET6)
   net_adj = sizeof(struct ipv6hdr);
  break;
 case 128:
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return ((mtu - x->props.header_len - crypto_aead_authsize(aead) -
   net_adj) & ~(blksize - 1)) + net_adj - 2;
}
