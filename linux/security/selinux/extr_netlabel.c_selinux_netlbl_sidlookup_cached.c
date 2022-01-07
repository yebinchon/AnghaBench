
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int flags; } ;


 int NETLBL_SECATTR_CACHE ;
 int NETLBL_SECATTR_CACHEABLE ;
 int netlbl_cache_add (struct sk_buff*,int ,struct netlbl_lsm_secattr*) ;
 int security_netlbl_secattr_to_sid (int *,struct netlbl_lsm_secattr*,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_netlbl_sidlookup_cached(struct sk_buff *skb,
        u16 family,
        struct netlbl_lsm_secattr *secattr,
        u32 *sid)
{
 int rc;

 rc = security_netlbl_secattr_to_sid(&selinux_state, secattr, sid);
 if (rc == 0 &&
     (secattr->flags & NETLBL_SECATTR_CACHEABLE) &&
     (secattr->flags & NETLBL_SECATTR_CACHE))
  netlbl_cache_add(skb, family, secattr);

 return rc;
}
