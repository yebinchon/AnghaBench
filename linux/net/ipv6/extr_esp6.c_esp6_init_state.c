
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int mode; scalar_t__ trailer_len; scalar_t__ header_len; } ;
struct TYPE_3__ {int family; } ;
struct xfrm_state {TYPE_2__ props; TYPE_1__ sel; struct crypto_aead* data; scalar_t__ aead; scalar_t__ encap; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
struct crypto_aead {int dummy; } ;


 int AF_INET6 ;
 scalar_t__ ALIGN (int ,int) ;
 int EINVAL ;
 int IPV4_BEET_PHMAXLEN ;



 scalar_t__ crypto_aead_authsize (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;
 scalar_t__ crypto_aead_ivsize (struct crypto_aead*) ;
 int esp_init_aead (struct xfrm_state*) ;
 int esp_init_authenc (struct xfrm_state*) ;

__attribute__((used)) static int esp6_init_state(struct xfrm_state *x)
{
 struct crypto_aead *aead;
 u32 align;
 int err;

 if (x->encap)
  return -EINVAL;

 x->data = ((void*)0);

 if (x->aead)
  err = esp_init_aead(x);
 else
  err = esp_init_authenc(x);

 if (err)
  goto error;

 aead = x->data;

 x->props.header_len = sizeof(struct ip_esp_hdr) +
         crypto_aead_ivsize(aead);
 switch (x->props.mode) {
 case 130:
  if (x->sel.family != AF_INET6)
   x->props.header_len += IPV4_BEET_PHMAXLEN +
            (sizeof(struct ipv6hdr) - sizeof(struct iphdr));
  break;
 default:
 case 129:
  break;
 case 128:
  x->props.header_len += sizeof(struct ipv6hdr);
  break;
 }

 align = ALIGN(crypto_aead_blocksize(aead), 4);
 x->props.trailer_len = align + 1 + crypto_aead_authsize(aead);

error:
 return err;
}
