
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_meta_info {scalar_t__ metaval; } ;



int ife_check_meta_u32(u32 metaval, struct tcf_meta_info *mi)
{
 if (metaval || mi->metaval)
  return 8;

 return 0;
}
