
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xt_ct_target_info_v1 {int flags; } ;


 int NF_CT_DEFAULT_ZONE_DIR ;
 int NF_CT_ZONE_DIR_ORIG ;
 int NF_CT_ZONE_DIR_REPL ;



__attribute__((used)) static u16 xt_ct_flags_to_dir(const struct xt_ct_target_info_v1 *info)
{
 switch (info->flags & (129 |
          128)) {
 case 129:
  return NF_CT_ZONE_DIR_ORIG;
 case 128:
  return NF_CT_ZONE_DIR_REPL;
 default:
  return NF_CT_DEFAULT_ZONE_DIR;
 }
}
