
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nf_conn {int timeout; int status; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPS_FIXED_TIMEOUT_BIT ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 int nf_ct_acct_update (struct nf_conn*,int,int ) ;
 scalar_t__ nf_ct_is_confirmed (struct nf_conn*) ;
 scalar_t__ nfct_time_stamp ;
 scalar_t__ test_bit (int ,int *) ;

void __nf_ct_refresh_acct(struct nf_conn *ct,
     enum ip_conntrack_info ctinfo,
     const struct sk_buff *skb,
     u32 extra_jiffies,
     bool do_acct)
{

 if (test_bit(IPS_FIXED_TIMEOUT_BIT, &ct->status))
  goto acct;


 if (nf_ct_is_confirmed(ct))
  extra_jiffies += nfct_time_stamp;

 if (READ_ONCE(ct->timeout) != extra_jiffies)
  WRITE_ONCE(ct->timeout, extra_jiffies);
acct:
 if (do_acct)
  nf_ct_acct_update(ct, ctinfo, skb->len);
}
