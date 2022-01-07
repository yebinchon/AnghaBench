
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_krule {scalar_t__ listnr; struct audit_field* inode_f; scalar_t__ tree; scalar_t__ watch; } ;
struct audit_field {scalar_t__ op; } ;


 scalar_t__ AUDIT_FILTER_EXIT ;
 scalar_t__ Audit_equal ;
 scalar_t__ Audit_not_equal ;
 int EINVAL ;

__attribute__((used)) static inline int audit_to_inode(struct audit_krule *krule,
     struct audit_field *f)
{
 if (krule->listnr != AUDIT_FILTER_EXIT ||
     krule->inode_f || krule->watch || krule->tree ||
     (f->op != Audit_equal && f->op != Audit_not_equal))
  return -EINVAL;

 krule->inode_f = f;
 return 0;
}
