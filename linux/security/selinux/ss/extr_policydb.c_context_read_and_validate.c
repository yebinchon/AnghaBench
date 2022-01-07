
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb {scalar_t__ policyvers; } ;
struct context {int range; void* type; void* role; void* user; } ;
typedef int __le32 ;


 int EINVAL ;
 scalar_t__ POLICYDB_VERSION_MLS ;
 int context_destroy (struct context*) ;
 void* le32_to_cpu (int ) ;
 int mls_read_range_helper (int *,void*) ;
 int next_entry (int *,void*,int) ;
 int policydb_context_isvalid (struct policydb*,struct context*) ;
 int pr_err (char*) ;

__attribute__((used)) static int context_read_and_validate(struct context *c,
         struct policydb *p,
         void *fp)
{
 __le32 buf[3];
 int rc;

 rc = next_entry(buf, fp, sizeof buf);
 if (rc) {
  pr_err("SELinux: context truncated\n");
  goto out;
 }
 c->user = le32_to_cpu(buf[0]);
 c->role = le32_to_cpu(buf[1]);
 c->type = le32_to_cpu(buf[2]);
 if (p->policyvers >= POLICYDB_VERSION_MLS) {
  rc = mls_read_range_helper(&c->range, fp);
  if (rc) {
   pr_err("SELinux: error reading MLS range of context\n");
   goto out;
  }
 }

 rc = -EINVAL;
 if (!policydb_context_isvalid(p, c)) {
  pr_err("SELinux:  invalid security context\n");
  context_destroy(c);
  goto out;
 }
 rc = 0;
out:
 return rc;
}
