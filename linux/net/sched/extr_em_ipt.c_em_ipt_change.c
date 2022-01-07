
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xt_match {int me; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct em_ipt_match {int nfproto; int match_data; int hook; struct xt_match* match; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct xt_match*) ;


 int PTR_ERR (struct xt_match*) ;
 size_t TCA_EM_IPT_HOOK ;
 size_t TCA_EM_IPT_MATCH_DATA ;
 size_t TCA_EM_IPT_MATCH_NAME ;
 int TCA_EM_IPT_MAX ;
 size_t TCA_EM_IPT_NFPROTO ;
 int XT_ALIGN (int ) ;
 int check_match (struct net*,struct em_ipt_match*,int) ;
 int em_ipt_policy ;
 struct xt_match* get_xt_match (struct nlattr**) ;
 int kfree (struct em_ipt_match*) ;
 struct em_ipt_match* kzalloc (int,int ) ;
 int module_put (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_memcpy (int ,struct nlattr*,int) ;
 int nla_parse_deprecated (struct nlattr**,int ,void*,int,int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int em_ipt_change(struct net *net, void *data, int data_len,
    struct tcf_ematch *em)
{
 struct nlattr *tb[TCA_EM_IPT_MAX + 1];
 struct em_ipt_match *im = ((void*)0);
 struct xt_match *match;
 int mdata_len, ret;
 u8 nfproto;

 ret = nla_parse_deprecated(tb, TCA_EM_IPT_MAX, data, data_len,
       em_ipt_policy, ((void*)0));
 if (ret < 0)
  return ret;

 if (!tb[TCA_EM_IPT_HOOK] || !tb[TCA_EM_IPT_MATCH_NAME] ||
     !tb[TCA_EM_IPT_MATCH_DATA] || !tb[TCA_EM_IPT_NFPROTO])
  return -EINVAL;

 nfproto = nla_get_u8(tb[TCA_EM_IPT_NFPROTO]);
 switch (nfproto) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 match = get_xt_match(tb);
 if (IS_ERR(match)) {
  pr_err("unable to load match\n");
  return PTR_ERR(match);
 }

 mdata_len = XT_ALIGN(nla_len(tb[TCA_EM_IPT_MATCH_DATA]));
 im = kzalloc(sizeof(*im) + mdata_len, GFP_KERNEL);
 if (!im) {
  ret = -ENOMEM;
  goto err;
 }

 im->match = match;
 im->hook = nla_get_u32(tb[TCA_EM_IPT_HOOK]);
 im->nfproto = nfproto;
 nla_memcpy(im->match_data, tb[TCA_EM_IPT_MATCH_DATA], mdata_len);

 ret = check_match(net, im, mdata_len);
 if (ret)
  goto err;

 em->datalen = sizeof(*im) + mdata_len;
 em->data = (unsigned long)im;
 return 0;

err:
 kfree(im);
 module_put(match->me);
 return ret;
}
