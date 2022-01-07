
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int ifa_flags; unsigned long ifa_valid_lft; unsigned long ifa_preferred_lft; scalar_t__ ifa_tstamp; scalar_t__ ifa_cstamp; } ;
typedef int __u32 ;


 int HZ ;
 int IFA_F_DEPRECATED ;
 int IFA_F_PERMANENT ;
 scalar_t__ addrconf_finite_timeout (unsigned long) ;
 unsigned long addrconf_timeout_fixup (int ,int ) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void set_ifa_lifetime(struct in_ifaddr *ifa, __u32 valid_lft,
        __u32 prefered_lft)
{
 unsigned long timeout;

 ifa->ifa_flags &= ~(IFA_F_PERMANENT | IFA_F_DEPRECATED);

 timeout = addrconf_timeout_fixup(valid_lft, HZ);
 if (addrconf_finite_timeout(timeout))
  ifa->ifa_valid_lft = timeout;
 else
  ifa->ifa_flags |= IFA_F_PERMANENT;

 timeout = addrconf_timeout_fixup(prefered_lft, HZ);
 if (addrconf_finite_timeout(timeout)) {
  if (timeout == 0)
   ifa->ifa_flags |= IFA_F_DEPRECATED;
  ifa->ifa_preferred_lft = timeout;
 }
 ifa->ifa_tstamp = jiffies;
 if (!ifa->ifa_cstamp)
  ifa->ifa_cstamp = ifa->ifa_tstamp;
}
