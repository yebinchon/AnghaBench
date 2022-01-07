
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {char** table; } ;
struct TYPE_4__ {TYPE_1__ trans; } ;
struct aa_profile {struct aa_label label; TYPE_2__ file; } ;


 int AA_BUG (int) ;
 int AA_X_CHILD ;
 int AA_X_INDEX_MASK ;
 int AA_X_TYPE_MASK ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 struct aa_profile* aa_find_child (struct aa_profile*,char const*) ;
 struct aa_label* aa_label_parse (struct aa_label*,char const*,int ,int,int) ;
 char* next_name (int,char const*) ;

struct aa_label *x_table_lookup(struct aa_profile *profile, u32 xindex,
    const char **name)
{
 struct aa_label *label = ((void*)0);
 u32 xtype = xindex & AA_X_TYPE_MASK;
 int index = xindex & AA_X_INDEX_MASK;

 AA_BUG(!name);





 for (*name = profile->file.trans.table[index]; !label && *name;
      *name = next_name(xtype, *name)) {
  if (xindex & AA_X_CHILD) {
   struct aa_profile *new_profile;

   new_profile = aa_find_child(profile, *name);
   if (new_profile)
    label = &new_profile->label;
   continue;
  }
  label = aa_label_parse(&profile->label, *name, GFP_ATOMIC,
           1, 0);
  if (IS_ERR(label))
   label = ((void*)0);
 }



 return label;
}
