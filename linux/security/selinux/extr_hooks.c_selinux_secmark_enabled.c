
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ selinux_policycap_alwaysnetwork () ;
 int selinux_secmark_refcount ;

__attribute__((used)) static int selinux_secmark_enabled(void)
{
 return (selinux_policycap_alwaysnetwork() ||
  atomic_read(&selinux_secmark_refcount));
}
