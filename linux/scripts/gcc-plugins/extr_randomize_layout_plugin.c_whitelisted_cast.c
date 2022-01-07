
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct whitelist_entry {int rhs; int lhs; scalar_t__ pathname; } ;
typedef int gimple ;
struct TYPE_3__ {int file; } ;
typedef TYPE_1__ expanded_location ;
typedef int const_tree ;


 TYPE_1__ expand_location (int ) ;
 int gimple_location (int ) ;
 int strstr (int ,scalar_t__) ;
 scalar_t__ type_name_eq (int ,int ,int ) ;
 struct whitelist_entry* whitelist ;

__attribute__((used)) static bool whitelisted_cast(gimple stmt, const_tree lhs_tree, const_tree rhs_tree)
{
 const struct whitelist_entry *entry;
 expanded_location xloc = expand_location(gimple_location(stmt));

 for (entry = whitelist; entry->pathname; entry++) {
  if (!strstr(xloc.file, entry->pathname))
   continue;

  if (type_name_eq(stmt, lhs_tree, entry->lhs) && type_name_eq(stmt, rhs_tree, entry->rhs))
   return 1;
 }

 return 0;
}
