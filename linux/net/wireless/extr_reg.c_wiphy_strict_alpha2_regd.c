
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; } ;


 int REGULATORY_CUSTOM_REG ;
 int REGULATORY_STRICT_REG ;

__attribute__((used)) static bool wiphy_strict_alpha2_regd(struct wiphy *wiphy)
{
 if (wiphy->regulatory_flags & REGULATORY_STRICT_REG &&
     !(wiphy->regulatory_flags & REGULATORY_CUSTOM_REG))
  return 1;
 return 0;
}
