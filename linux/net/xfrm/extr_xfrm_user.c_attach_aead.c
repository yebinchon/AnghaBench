
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ealgo; } ;
struct xfrm_state {int geniv; struct xfrm_algo_aead* aead; TYPE_1__ props; } ;
struct TYPE_7__ {int geniv; } ;
struct TYPE_8__ {TYPE_3__ aead; } ;
struct TYPE_6__ {int sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_4__ uinfo; int name; TYPE_2__ desc; } ;
struct xfrm_algo_aead {int alg_name; int alg_icv_len; } ;
struct nlattr {int dummy; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int aead_len (struct xfrm_algo_aead*) ;
 struct xfrm_algo_aead* kmemdup (struct xfrm_algo_aead*,int ,int ) ;
 struct xfrm_algo_aead* nla_data (struct nlattr*) ;
 int strcpy (int ,int ) ;
 struct xfrm_algo_desc* xfrm_aead_get_byname (int ,int ,int) ;

__attribute__((used)) static int attach_aead(struct xfrm_state *x, struct nlattr *rta)
{
 struct xfrm_algo_aead *p, *ualg;
 struct xfrm_algo_desc *algo;

 if (!rta)
  return 0;

 ualg = nla_data(rta);

 algo = xfrm_aead_get_byname(ualg->alg_name, ualg->alg_icv_len, 1);
 if (!algo)
  return -ENOSYS;
 x->props.ealgo = algo->desc.sadb_alg_id;

 p = kmemdup(ualg, aead_len(ualg), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 strcpy(p->alg_name, algo->name);
 x->aead = p;
 x->geniv = algo->uinfo.aead.geniv;
 return 0;
}
