
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int kuid_t ;
 int uid_eq (int ,int ) ;
 int uid_gt (int ,int ) ;
 int uid_gte (int ,int ) ;
 int uid_lt (int ,int ) ;
 int uid_lte (int ,int ) ;

int audit_uid_comparator(kuid_t left, u32 op, kuid_t right)
{
 switch (op) {
 case 133:
  return uid_eq(left, right);
 case 128:
  return !uid_eq(left, right);
 case 129:
  return uid_lt(left, right);
 case 130:
  return uid_lte(left, right);
 case 131:
  return uid_gt(left, right);
 case 132:
  return uid_gte(left, right);
 case 135:
 case 134:
 default:
  return 0;
 }
}
