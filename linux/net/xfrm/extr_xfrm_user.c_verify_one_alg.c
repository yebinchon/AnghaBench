
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo {char* alg_name; } ;
struct nlattr {int dummy; } ;
typedef enum xfrm_attr_type_t { ____Placeholder_xfrm_attr_type_t } xfrm_attr_type_t ;


 int EINVAL ;



 struct xfrm_algo* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ xfrm_alg_len (struct xfrm_algo*) ;

__attribute__((used)) static int verify_one_alg(struct nlattr **attrs, enum xfrm_attr_type_t type)
{
 struct nlattr *rt = attrs[type];
 struct xfrm_algo *algp;

 if (!rt)
  return 0;

 algp = nla_data(rt);
 if (nla_len(rt) < (int)xfrm_alg_len(algp))
  return -EINVAL;

 switch (type) {
 case 130:
 case 128:
 case 129:
  break;

 default:
  return -EINVAL;
 }

 algp->alg_name[sizeof(algp->alg_name) - 1] = '\0';
 return 0;
}
