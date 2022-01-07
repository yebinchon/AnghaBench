
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ icv_fullbits; scalar_t__ icv_truncbits; } ;
struct TYPE_6__ {TYPE_2__ auth; } ;
struct TYPE_4__ {int sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_3__ uinfo; int name; TYPE_1__ desc; } ;
struct xfrm_algo_auth {scalar_t__ alg_trunc_len; int alg_name; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 struct xfrm_algo_auth* kmemdup (struct xfrm_algo_auth*,int ,int ) ;
 struct xfrm_algo_auth* nla_data (struct nlattr*) ;
 int strcpy (int ,int ) ;
 struct xfrm_algo_desc* xfrm_aalg_get_byname (int ,int) ;
 int xfrm_alg_auth_len (struct xfrm_algo_auth*) ;

__attribute__((used)) static int attach_auth_trunc(struct xfrm_algo_auth **algpp, u8 *props,
        struct nlattr *rta)
{
 struct xfrm_algo_auth *p, *ualg;
 struct xfrm_algo_desc *algo;

 if (!rta)
  return 0;

 ualg = nla_data(rta);

 algo = xfrm_aalg_get_byname(ualg->alg_name, 1);
 if (!algo)
  return -ENOSYS;
 if (ualg->alg_trunc_len > algo->uinfo.auth.icv_fullbits)
  return -EINVAL;
 *props = algo->desc.sadb_alg_id;

 p = kmemdup(ualg, xfrm_alg_auth_len(ualg), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 strcpy(p->alg_name, algo->name);
 if (!p->alg_trunc_len)
  p->alg_trunc_len = algo->uinfo.auth.icv_truncbits;

 *algpp = p;
 return 0;
}
