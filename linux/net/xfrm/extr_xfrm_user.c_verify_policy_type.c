
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;



__attribute__((used)) static int verify_policy_type(u8 type)
{
 switch (type) {
 case 129:



  break;

 default:
  return -EINVAL;
 }

 return 0;
}
