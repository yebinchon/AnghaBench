
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct range_trans {void* target_class; void* target_type; void* source_type; } ;
struct policydb {scalar_t__ policyvers; int range_tr; void* process_class; } ;
struct mls_range {void* target_class; void* target_type; void* source_type; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ POLICYDB_VERSION_MLS ;
 scalar_t__ POLICYDB_VERSION_RANGETRANS ;
 int hash_eval (int ,char*) ;
 int hashtab_insert (int ,struct range_trans*,struct range_trans*) ;
 int kfree (struct range_trans*) ;
 struct range_trans* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int mls_range_isvalid (struct policydb*,struct range_trans*) ;
 int mls_read_range_helper (struct range_trans*,void*) ;
 int next_entry (int *,void*,int) ;
 int policydb_class_isvalid (struct policydb*,void*) ;
 int policydb_type_isvalid (struct policydb*,void*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int range_read(struct policydb *p, void *fp)
{
 struct range_trans *rt = ((void*)0);
 struct mls_range *r = ((void*)0);
 int i, rc;
 __le32 buf[2];
 u32 nel;

 if (p->policyvers < POLICYDB_VERSION_MLS)
  return 0;

 rc = next_entry(buf, fp, sizeof(u32));
 if (rc)
  return rc;

 nel = le32_to_cpu(buf[0]);
 for (i = 0; i < nel; i++) {
  rc = -ENOMEM;
  rt = kzalloc(sizeof(*rt), GFP_KERNEL);
  if (!rt)
   goto out;

  rc = next_entry(buf, fp, (sizeof(u32) * 2));
  if (rc)
   goto out;

  rt->source_type = le32_to_cpu(buf[0]);
  rt->target_type = le32_to_cpu(buf[1]);
  if (p->policyvers >= POLICYDB_VERSION_RANGETRANS) {
   rc = next_entry(buf, fp, sizeof(u32));
   if (rc)
    goto out;
   rt->target_class = le32_to_cpu(buf[0]);
  } else
   rt->target_class = p->process_class;

  rc = -EINVAL;
  if (!policydb_type_isvalid(p, rt->source_type) ||
      !policydb_type_isvalid(p, rt->target_type) ||
      !policydb_class_isvalid(p, rt->target_class))
   goto out;

  rc = -ENOMEM;
  r = kzalloc(sizeof(*r), GFP_KERNEL);
  if (!r)
   goto out;

  rc = mls_read_range_helper(r, fp);
  if (rc)
   goto out;

  rc = -EINVAL;
  if (!mls_range_isvalid(p, r)) {
   pr_warn("SELinux:  rangetrans:  invalid range\n");
   goto out;
  }

  rc = hashtab_insert(p->range_tr, rt, r);
  if (rc)
   goto out;

  rt = ((void*)0);
  r = ((void*)0);
 }
 hash_eval(p->range_tr, "rangetr");
 rc = 0;
out:
 kfree(rt);
 kfree(r);
 return rc;
}
