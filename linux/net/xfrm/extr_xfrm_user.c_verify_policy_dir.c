
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;




__attribute__((used)) static int verify_policy_dir(u8 dir)
{
 switch (dir) {
 case 129:
 case 128:
 case 130:
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
