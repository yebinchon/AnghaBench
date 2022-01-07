
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selinux_state {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 int EIDRM ;

__attribute__((used)) static inline int security_netlbl_secattr_to_sid(struct selinux_state *state,
         struct netlbl_lsm_secattr *secattr,
         u32 *sid)
{
 return -EIDRM;
}
