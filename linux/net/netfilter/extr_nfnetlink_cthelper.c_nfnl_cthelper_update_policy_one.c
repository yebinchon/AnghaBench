
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_expect_policy {scalar_t__ max_expected; void* timeout; int name; } ;


 int EBUSY ;
 int EINVAL ;
 size_t NFCTH_POLICY_EXPECT_MAX ;
 size_t NFCTH_POLICY_EXPECT_TIMEOUT ;
 int NFCTH_POLICY_MAX ;
 size_t NFCTH_POLICY_NAME ;
 scalar_t__ NF_CT_EXPECT_MAX_CNT ;
 int nfnl_cthelper_expect_pol ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 void* ntohl (int ) ;

__attribute__((used)) static int
nfnl_cthelper_update_policy_one(const struct nf_conntrack_expect_policy *policy,
    struct nf_conntrack_expect_policy *new_policy,
    const struct nlattr *attr)
{
 struct nlattr *tb[NFCTH_POLICY_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFCTH_POLICY_MAX, attr,
       nfnl_cthelper_expect_pol, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFCTH_POLICY_NAME] ||
     !tb[NFCTH_POLICY_EXPECT_MAX] ||
     !tb[NFCTH_POLICY_EXPECT_TIMEOUT])
  return -EINVAL;

 if (nla_strcmp(tb[NFCTH_POLICY_NAME], policy->name))
  return -EBUSY;

 new_policy->max_expected =
  ntohl(nla_get_be32(tb[NFCTH_POLICY_EXPECT_MAX]));
 if (new_policy->max_expected > NF_CT_EXPECT_MAX_CNT)
  return -EINVAL;

 new_policy->timeout =
  ntohl(nla_get_be32(tb[NFCTH_POLICY_EXPECT_TIMEOUT]));

 return 0;
}
