
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int icv_truncbits; } ;
struct TYPE_6__ {TYPE_2__ auth; } ;
struct TYPE_4__ {int sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_3__ uinfo; int name; TYPE_1__ desc; } ;
struct xfrm_algo_auth {int alg_key_len; int alg_key; int alg_trunc_len; int alg_name; } ;
struct xfrm_algo {int alg_key_len; int alg_key; int alg_name; } ;
struct nlattr {int dummy; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 struct xfrm_algo_auth* kmalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 struct xfrm_algo* nla_data (struct nlattr*) ;
 int strcpy (int ,int ) ;
 struct xfrm_algo_desc* xfrm_aalg_get_byname (int ,int) ;

__attribute__((used)) static int attach_auth(struct xfrm_algo_auth **algpp, u8 *props,
         struct nlattr *rta)
{
 struct xfrm_algo *ualg;
 struct xfrm_algo_auth *p;
 struct xfrm_algo_desc *algo;

 if (!rta)
  return 0;

 ualg = nla_data(rta);

 algo = xfrm_aalg_get_byname(ualg->alg_name, 1);
 if (!algo)
  return -ENOSYS;
 *props = algo->desc.sadb_alg_id;

 p = kmalloc(sizeof(*p) + (ualg->alg_key_len + 7) / 8, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 strcpy(p->alg_name, algo->name);
 p->alg_key_len = ualg->alg_key_len;
 p->alg_trunc_len = algo->uinfo.auth.icv_truncbits;
 memcpy(p->alg_key, ualg->alg_key, (ualg->alg_key_len + 7) / 8);

 *algpp = p;
 return 0;
}
