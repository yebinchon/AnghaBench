
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct policydb {int policyvers; } ;
struct constraint_node {struct constraint_expr* expr; void* permissions; struct constraint_node* next; } ;
struct constraint_expr {int expr_type; int attr; void* type_names; int names; void* op; struct constraint_expr* next; } ;
typedef int __le32 ;




 int CEXPR_MAXDEPTH ;



 int CEXPR_XTARGET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int POLICYDB_VERSION_CONSTRAINT_NAMES ;
 int ebitmap_read (int *,void*) ;
 void* kzalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;
 int type_set_init (void*) ;
 int type_set_read (void*,void*) ;

__attribute__((used)) static int read_cons_helper(struct policydb *p,
    struct constraint_node **nodep,
    int ncons, int allowxtarget, void *fp)
{
 struct constraint_node *c, *lc;
 struct constraint_expr *e, *le;
 __le32 buf[3];
 u32 nexpr;
 int rc, i, j, depth;

 lc = ((void*)0);
 for (i = 0; i < ncons; i++) {
  c = kzalloc(sizeof(*c), GFP_KERNEL);
  if (!c)
   return -ENOMEM;

  if (lc)
   lc->next = c;
  else
   *nodep = c;

  rc = next_entry(buf, fp, (sizeof(u32) * 2));
  if (rc)
   return rc;
  c->permissions = le32_to_cpu(buf[0]);
  nexpr = le32_to_cpu(buf[1]);
  le = ((void*)0);
  depth = -1;
  for (j = 0; j < nexpr; j++) {
   e = kzalloc(sizeof(*e), GFP_KERNEL);
   if (!e)
    return -ENOMEM;

   if (le)
    le->next = e;
   else
    c->expr = e;

   rc = next_entry(buf, fp, (sizeof(u32) * 3));
   if (rc)
    return rc;
   e->expr_type = le32_to_cpu(buf[0]);
   e->attr = le32_to_cpu(buf[1]);
   e->op = le32_to_cpu(buf[2]);

   switch (e->expr_type) {
   case 129:
    if (depth < 0)
     return -EINVAL;
    break;
   case 132:
   case 128:
    if (depth < 1)
     return -EINVAL;
    depth--;
    break;
   case 131:
    if (depth == (CEXPR_MAXDEPTH - 1))
     return -EINVAL;
    depth++;
    break;
   case 130:
    if (!allowxtarget && (e->attr & CEXPR_XTARGET))
     return -EINVAL;
    if (depth == (CEXPR_MAXDEPTH - 1))
     return -EINVAL;
    depth++;
    rc = ebitmap_read(&e->names, fp);
    if (rc)
     return rc;
    if (p->policyvers >=
     POLICYDB_VERSION_CONSTRAINT_NAMES) {
      e->type_names = kzalloc(sizeof
      (*e->type_names),
      GFP_KERNEL);
     if (!e->type_names)
      return -ENOMEM;
     type_set_init(e->type_names);
     rc = type_set_read(e->type_names, fp);
     if (rc)
      return rc;
    }
    break;
   default:
    return -EINVAL;
   }
   le = e;
  }
  if (depth != 0)
   return -EINVAL;
  lc = c;
 }

 return 0;
}
