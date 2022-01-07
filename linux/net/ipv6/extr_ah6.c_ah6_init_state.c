
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int header_len; int mode; } ;
struct xfrm_state {struct ah_data* data; TYPE_4__ props; TYPE_3__* aalg; scalar_t__ encap; } ;
struct TYPE_5__ {int icv_fullbits; } ;
struct TYPE_6__ {TYPE_1__ auth; } ;
struct xfrm_algo_desc {TYPE_2__ uinfo; } ;
struct ipv6hdr {int dummy; } ;
struct ip_auth_hdr {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ah_data {int icv_full_len; int icv_trunc_len; struct crypto_ahash* ahash; } ;
struct TYPE_7__ {int alg_key_len; int alg_trunc_len; int alg_name; int alg_key; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int XFRM_ALIGN8 (int) ;



 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_setkey (struct crypto_ahash*,int ,int) ;
 struct crypto_ahash* crypto_alloc_ahash (int ,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int kfree (struct ah_data*) ;
 struct ah_data* kzalloc (int,int ) ;
 int pr_info (char*,int ,int,int) ;
 struct xfrm_algo_desc* xfrm_aalg_get_byname (int ,int ) ;

__attribute__((used)) static int ah6_init_state(struct xfrm_state *x)
{
 struct ah_data *ahp = ((void*)0);
 struct xfrm_algo_desc *aalg_desc;
 struct crypto_ahash *ahash;

 if (!x->aalg)
  goto error;

 if (x->encap)
  goto error;

 ahp = kzalloc(sizeof(*ahp), GFP_KERNEL);
 if (!ahp)
  return -ENOMEM;

 ahash = crypto_alloc_ahash(x->aalg->alg_name, 0, 0);
 if (IS_ERR(ahash))
  goto error;

 ahp->ahash = ahash;
 if (crypto_ahash_setkey(ahash, x->aalg->alg_key,
          (x->aalg->alg_key_len + 7) / 8))
  goto error;







 aalg_desc = xfrm_aalg_get_byname(x->aalg->alg_name, 0);
 BUG_ON(!aalg_desc);

 if (aalg_desc->uinfo.auth.icv_fullbits/8 !=
     crypto_ahash_digestsize(ahash)) {
  pr_info("AH: %s digestsize %u != %hu\n",
   x->aalg->alg_name, crypto_ahash_digestsize(ahash),
   aalg_desc->uinfo.auth.icv_fullbits/8);
  goto error;
 }

 ahp->icv_full_len = aalg_desc->uinfo.auth.icv_fullbits/8;
 ahp->icv_trunc_len = x->aalg->alg_trunc_len/8;

 x->props.header_len = XFRM_ALIGN8(sizeof(struct ip_auth_hdr) +
       ahp->icv_trunc_len);
 switch (x->props.mode) {
 case 130:
 case 129:
  break;
 case 128:
  x->props.header_len += sizeof(struct ipv6hdr);
  break;
 default:
  goto error;
 }
 x->data = ahp;

 return 0;

error:
 if (ahp) {
  crypto_free_ahash(ahp->ahash);
  kfree(ahp);
 }
 return -EINVAL;
}
