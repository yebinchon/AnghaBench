
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlbl_domhsh_walk_arg {scalar_t__ doi; int audit_info; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__* cipso; } ;
struct netlbl_dom_map {TYPE_2__ def; } ;
struct TYPE_3__ {scalar_t__ doi; } ;


 scalar_t__ NETLBL_NLTYPE_CIPSOV4 ;
 int netlbl_domhsh_remove_entry (struct netlbl_dom_map*,int ) ;

__attribute__((used)) static int netlbl_cipsov4_remove_cb(struct netlbl_dom_map *entry, void *arg)
{
 struct netlbl_domhsh_walk_arg *cb_arg = arg;

 if (entry->def.type == NETLBL_NLTYPE_CIPSOV4 &&
     entry->def.cipso->doi == cb_arg->doi)
  return netlbl_domhsh_remove_entry(entry, cb_arg->audit_info);

 return 0;
}
