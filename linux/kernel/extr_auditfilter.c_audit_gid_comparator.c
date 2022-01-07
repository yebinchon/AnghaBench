
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int kgid_t ;
 int gid_eq (int ,int ) ;
 int gid_gt (int ,int ) ;
 int gid_gte (int ,int ) ;
 int gid_lt (int ,int ) ;
 int gid_lte (int ,int ) ;

int audit_gid_comparator(kgid_t left, u32 op, kgid_t right)
{
 switch (op) {
 case 133:
  return gid_eq(left, right);
 case 128:
  return !gid_eq(left, right);
 case 129:
  return gid_lt(left, right);
 case 130:
  return gid_lte(left, right);
 case 131:
  return gid_gt(left, right);
 case 132:
  return gid_gte(left, right);
 case 135:
 case 134:
 default:
  return 0;
 }
}
