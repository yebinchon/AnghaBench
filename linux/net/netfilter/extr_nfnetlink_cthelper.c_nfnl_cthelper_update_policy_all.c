
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int expect_class_max; int * expect_policy; } ;
struct nf_conntrack_expect_policy {int timeout; int max_expected; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFCTH_POLICY_SET ;
 int kfree (struct nf_conntrack_expect_policy*) ;
 struct nf_conntrack_expect_policy* kmalloc_array (int,int,int ) ;
 int nfnl_cthelper_update_policy_one (int *,struct nf_conntrack_expect_policy*,struct nlattr*) ;

__attribute__((used)) static int nfnl_cthelper_update_policy_all(struct nlattr *tb[],
        struct nf_conntrack_helper *helper)
{
 struct nf_conntrack_expect_policy *new_policy;
 struct nf_conntrack_expect_policy *policy;
 int i, ret = 0;

 new_policy = kmalloc_array(helper->expect_class_max + 1,
       sizeof(*new_policy), GFP_KERNEL);
 if (!new_policy)
  return -ENOMEM;




 for (i = 0; i < helper->expect_class_max + 1; i++) {

  if (!tb[NFCTH_POLICY_SET + i]) {
   ret = -EINVAL;
   goto err;
  }

  ret = nfnl_cthelper_update_policy_one(&helper->expect_policy[i],
            &new_policy[i],
            tb[NFCTH_POLICY_SET + i]);
  if (ret < 0)
   goto err;
 }

 for (i = 0; i < helper->expect_class_max + 1; i++) {
  policy = (struct nf_conntrack_expect_policy *)
    &helper->expect_policy[i];
  policy->max_expected = new_policy->max_expected;
  policy->timeout = new_policy->timeout;
 }

err:
 kfree(new_policy);
 return ret;
}
