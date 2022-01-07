
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_aead {char* alg_name; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t XFRMA_ALG_AEAD ;
 scalar_t__ aead_len (struct xfrm_algo_aead*) ;
 struct xfrm_algo_aead* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int verify_aead(struct nlattr **attrs)
{
 struct nlattr *rt = attrs[XFRMA_ALG_AEAD];
 struct xfrm_algo_aead *algp;

 if (!rt)
  return 0;

 algp = nla_data(rt);
 if (nla_len(rt) < (int)aead_len(algp))
  return -EINVAL;

 algp->alg_name[sizeof(algp->alg_name) - 1] = '\0';
 return 0;
}
