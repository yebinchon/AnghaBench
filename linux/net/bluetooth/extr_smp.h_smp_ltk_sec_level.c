
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_ltk {scalar_t__ authenticated; } ;


 int BT_SECURITY_FIPS ;
 int BT_SECURITY_HIGH ;
 int BT_SECURITY_MEDIUM ;
 scalar_t__ smp_ltk_is_sc (struct smp_ltk*) ;

__attribute__((used)) static inline u8 smp_ltk_sec_level(struct smp_ltk *key)
{
 if (key->authenticated) {
  if (smp_ltk_is_sc(key))
   return BT_SECURITY_FIPS;
  else
   return BT_SECURITY_HIGH;
 }

 return BT_SECURITY_MEDIUM;
}
