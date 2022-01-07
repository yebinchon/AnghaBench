
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int dccp_feat_is_valid_sp_val (int,int ) ;

__attribute__((used)) static u8 dccp_feat_sp_list_ok(u8 feat_num, u8 const *sp_list, u8 sp_len)
{
 if (sp_list == ((void*)0) || sp_len < 1)
  return 0;
 while (sp_len--)
  if (!dccp_feat_is_valid_sp_val(feat_num, *sp_list++))
   return 0;
 return 1;
}
