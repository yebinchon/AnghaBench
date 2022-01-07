
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selinux_state {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static inline int security_netlbl_sid_to_secattr(struct selinux_state *state,
      u32 sid,
      struct netlbl_lsm_secattr *secattr)
{
 return -ENOENT;
}
