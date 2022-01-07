
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct ccid_dependency {scalar_t__ dependent_feat; int val; int is_mandatory; int is_local; } ;


 scalar_t__ DCCPF_RESERVED ;
 scalar_t__ FEAT_SP ;
 int __feat_register_nn (struct list_head*,scalar_t__,int ,int ) ;
 int __feat_register_sp (struct list_head*,scalar_t__,int ,int ,int *,int) ;
 struct ccid_dependency* dccp_feat_ccid_deps (int ,int) ;
 scalar_t__ dccp_feat_type (scalar_t__) ;

__attribute__((used)) static int dccp_feat_propagate_ccid(struct list_head *fn, u8 id, bool is_local)
{
 const struct ccid_dependency *table = dccp_feat_ccid_deps(id, is_local);
 int i, rc = (table == ((void*)0));

 for (i = 0; rc == 0 && table[i].dependent_feat != DCCPF_RESERVED; i++)
  if (dccp_feat_type(table[i].dependent_feat) == FEAT_SP)
   rc = __feat_register_sp(fn, table[i].dependent_feat,
          table[i].is_local,
          table[i].is_mandatory,
          &table[i].val, 1);
  else
   rc = __feat_register_nn(fn, table[i].dependent_feat,
          table[i].is_mandatory,
          table[i].val);
 return rc;
}
