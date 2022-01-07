
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int dummy; } ;


 int mld_force_mld_version (struct inet6_dev const*) ;

__attribute__((used)) static bool mld_in_v2_mode_only(const struct inet6_dev *idev)
{
 return mld_force_mld_version(idev) == 2;
}
