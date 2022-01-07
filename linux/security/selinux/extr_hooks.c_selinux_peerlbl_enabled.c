
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ netlbl_enabled () ;
 scalar_t__ selinux_policycap_alwaysnetwork () ;
 scalar_t__ selinux_xfrm_enabled () ;

__attribute__((used)) static int selinux_peerlbl_enabled(void)
{
 return (selinux_policycap_alwaysnetwork() ||
  netlbl_enabled() || selinux_xfrm_enabled());
}
