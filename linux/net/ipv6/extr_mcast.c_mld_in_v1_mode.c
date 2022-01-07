
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {scalar_t__ mc_v1_seen; } ;


 int jiffies ;
 scalar_t__ mld_in_v1_mode_only (struct inet6_dev const*) ;
 scalar_t__ mld_in_v2_mode_only (struct inet6_dev const*) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static bool mld_in_v1_mode(const struct inet6_dev *idev)
{
 if (mld_in_v2_mode_only(idev))
  return 0;
 if (mld_in_v1_mode_only(idev))
  return 1;
 if (idev->mc_v1_seen && time_before(jiffies, idev->mc_v1_seen))
  return 1;

 return 0;
}
