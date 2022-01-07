
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_ltk {int type; int authenticated; } ;


 int MGMT_LTK_AUTHENTICATED ;
 int MGMT_LTK_P256_AUTH ;
 int MGMT_LTK_P256_DEBUG ;
 int MGMT_LTK_P256_UNAUTH ;
 int MGMT_LTK_UNAUTHENTICATED ;





__attribute__((used)) static u8 mgmt_ltk_type(struct smp_ltk *ltk)
{
 switch (ltk->type) {
 case 131:
 case 128:
  if (ltk->authenticated)
   return MGMT_LTK_AUTHENTICATED;
  return MGMT_LTK_UNAUTHENTICATED;
 case 130:
  if (ltk->authenticated)
   return MGMT_LTK_P256_AUTH;
  return MGMT_LTK_P256_UNAUTH;
 case 129:
  return MGMT_LTK_P256_DEBUG;
 }

 return MGMT_LTK_UNAUTHENTICATED;
}
