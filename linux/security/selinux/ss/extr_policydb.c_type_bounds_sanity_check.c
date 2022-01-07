
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_datum {int bounds; scalar_t__ value; scalar_t__ attribute; } ;
struct policydb {struct type_datum** type_val_to_struct; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int POLICYDB_BOUNDS_MAXDEPTH ;
 int SYM_TYPES ;
 int pr_err (char*,char*,...) ;
 int sym_name (struct policydb*,int ,scalar_t__) ;

__attribute__((used)) static int type_bounds_sanity_check(void *key, void *datum, void *datap)
{
 struct type_datum *upper;
 struct policydb *p = datap;
 int depth = 0;

 upper = datum;
 while (upper->bounds) {
  if (++depth == POLICYDB_BOUNDS_MAXDEPTH) {
   pr_err("SELinux: type %s: "
          "too deep or looped boundary\n",
          (char *) key);
   return -EINVAL;
  }

  upper = p->type_val_to_struct[upper->bounds - 1];
  BUG_ON(!upper);

  if (upper->attribute) {
   pr_err("SELinux: type %s: "
          "bounded by attribute %s",
          (char *) key,
          sym_name(p, SYM_TYPES, upper->value - 1));
   return -EINVAL;
  }
 }

 return 0;
}
