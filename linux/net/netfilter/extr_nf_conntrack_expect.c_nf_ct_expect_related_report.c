
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conntrack_expect {int dummy; } ;


 int IPEXP_NEW ;
 int __nf_ct_expect_check (struct nf_conntrack_expect*,unsigned int) ;
 int nf_conntrack_expect_lock ;
 int nf_ct_expect_event_report (int ,struct nf_conntrack_expect*,int ,int) ;
 int nf_ct_expect_insert (struct nf_conntrack_expect*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int nf_ct_expect_related_report(struct nf_conntrack_expect *expect,
    u32 portid, int report, unsigned int flags)
{
 int ret;

 spin_lock_bh(&nf_conntrack_expect_lock);
 ret = __nf_ct_expect_check(expect, flags);
 if (ret < 0)
  goto out;

 nf_ct_expect_insert(expect);

 spin_unlock_bh(&nf_conntrack_expect_lock);
 nf_ct_expect_event_report(IPEXP_NEW, expect, portid, report);
 return 0;
out:
 spin_unlock_bh(&nf_conntrack_expect_lock);
 return ret;
}
