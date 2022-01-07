
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct linux_binprm {int dummy; } ;
struct TYPE_7__ {int profiles; } ;
struct TYPE_5__ {char** table; } ;
struct TYPE_6__ {TYPE_1__ trans; } ;
struct aa_profile {struct aa_ns* ns; int label; TYPE_3__ base; TYPE_2__ file; } ;
struct TYPE_8__ {int profiles; } ;
struct aa_ns {TYPE_4__ base; } ;
struct aa_label {int dummy; } ;


 int AA_X_CHILD ;
 int AA_X_INDEX_MASK ;
 int AA_X_INHERIT ;



 int AA_X_TYPE_MASK ;
 int AA_X_UNCONFINED ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 struct aa_label* aa_get_newest_label (int *) ;
 struct aa_label* aa_label_parse (struct aa_label*,char const*,int ,int,int) ;
 int aa_put_label (struct aa_label*) ;
 struct aa_label* find_attach (struct linux_binprm const*,struct aa_ns*,int *,char const*,char const**) ;
 int * ns_unconfined (struct aa_ns*) ;
 struct aa_label* x_table_lookup (struct aa_profile*,int,char const**) ;

__attribute__((used)) static struct aa_label *x_to_label(struct aa_profile *profile,
       const struct linux_binprm *bprm,
       const char *name, u32 xindex,
       const char **lookupname,
       const char **info)
{
 struct aa_label *new = ((void*)0);
 struct aa_ns *ns = profile->ns;
 u32 xtype = xindex & AA_X_TYPE_MASK;
 const char *stack = ((void*)0);

 switch (xtype) {
 case 129:

  *lookupname = ((void*)0);
  break;
 case 128:

  stack = profile->file.trans.table[xindex & AA_X_INDEX_MASK];
  if (*stack != '&') {

   new = x_table_lookup(profile, xindex, lookupname);
   stack = ((void*)0);
   break;
  }

 case 130:
  if (xindex & AA_X_CHILD)

   new = find_attach(bprm, ns, &profile->base.profiles,
       name, info);
  else

   new = find_attach(bprm, ns, &ns->base.profiles,
       name, info);
  *lookupname = name;
  break;
 }

 if (!new) {
  if (xindex & AA_X_INHERIT) {



   *info = "ix fallback";

   new = aa_get_newest_label(&profile->label);
  } else if (xindex & AA_X_UNCONFINED) {
   new = aa_get_newest_label(ns_unconfined(profile->ns));
   *info = "ux fallback";
  }
 }

 if (new && stack) {

  struct aa_label *base = new;

  new = aa_label_parse(base, stack, GFP_ATOMIC, 1, 0);
  if (IS_ERR(new))
   new = ((void*)0);
  aa_put_label(base);
 }


 return new;
}
