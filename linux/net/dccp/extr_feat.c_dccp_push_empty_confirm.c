
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;


 int dccp_feat_push_confirm (struct list_head*,int ,int ,int *) ;

__attribute__((used)) static int dccp_push_empty_confirm(struct list_head *fn_list, u8 feat, u8 local)
{
 return dccp_feat_push_confirm(fn_list, feat, local, ((void*)0));
}
