
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_field {char* lsm_str; int lsm_rule; int op; int type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup (char*,int ) ;
 int pr_warn (char*,char*) ;
 int security_audit_rule_init (int ,int ,char*,void**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int audit_dupe_lsm_field(struct audit_field *df,
        struct audit_field *sf)
{
 int ret = 0;
 char *lsm_str;


 lsm_str = kstrdup(sf->lsm_str, GFP_KERNEL);
 if (unlikely(!lsm_str))
  return -ENOMEM;
 df->lsm_str = lsm_str;


 ret = security_audit_rule_init(df->type, df->op, df->lsm_str,
           (void **)&df->lsm_rule);


 if (ret == -EINVAL) {
  pr_warn("audit rule for LSM \'%s\' is invalid\n",
   df->lsm_str);
  ret = 0;
 }

 return ret;
}
