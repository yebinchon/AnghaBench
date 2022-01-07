
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {int mls_enabled; } ;
struct context {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int SECSID_NULL ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int mls_context_to_sid (struct policydb*,char,char*,struct context*,int *,int ) ;

int mls_from_string(struct policydb *p, char *str, struct context *context,
      gfp_t gfp_mask)
{
 char *tmpstr;
 int rc;

 if (!p->mls_enabled)
  return -EINVAL;

 tmpstr = kstrdup(str, gfp_mask);
 if (!tmpstr) {
  rc = -ENOMEM;
 } else {
  rc = mls_context_to_sid(p, ':', tmpstr, context,
     ((void*)0), SECSID_NULL);
  kfree(tmpstr);
 }

 return rc;
}
