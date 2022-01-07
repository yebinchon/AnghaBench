
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {scalar_t__ flags; int type; } ;


 scalar_t__ NETLBL_SECATTR_NONE ;
 int SECSID_NULL ;
 int netlbl_enabled () ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int netlbl_skbuff_getattr (struct sk_buff*,int ,struct netlbl_lsm_secattr*) ;
 int selinux_netlbl_sidlookup_cached (struct sk_buff*,int ,struct netlbl_lsm_secattr*,int *) ;

int selinux_netlbl_skbuff_getsid(struct sk_buff *skb,
     u16 family,
     u32 *type,
     u32 *sid)
{
 int rc;
 struct netlbl_lsm_secattr secattr;

 if (!netlbl_enabled()) {
  *sid = SECSID_NULL;
  return 0;
 }

 netlbl_secattr_init(&secattr);
 rc = netlbl_skbuff_getattr(skb, family, &secattr);
 if (rc == 0 && secattr.flags != NETLBL_SECATTR_NONE)
  rc = selinux_netlbl_sidlookup_cached(skb, family,
           &secattr, sid);
 else
  *sid = SECSID_NULL;
 *type = secattr.type;
 netlbl_secattr_destroy(&secattr);

 return rc;
}
