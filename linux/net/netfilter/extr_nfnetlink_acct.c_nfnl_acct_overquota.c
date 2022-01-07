
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nf_acct {int flags; int bytes; int pkts; scalar_t__ data; } ;
struct net {int dummy; } ;


 int NFACCT_F_QUOTA ;
 int NFACCT_F_QUOTA_PKTS ;
 int NFACCT_NO_QUOTA ;
 int NFACCT_OVERQUOTA_BIT ;
 int NFACCT_UNDERQUOTA ;
 scalar_t__ atomic64_read (int *) ;
 int nfnl_overquota_report (struct net*,struct nf_acct*) ;
 int test_and_set_bit (int ,int*) ;

int nfnl_acct_overquota(struct net *net, struct nf_acct *nfacct)
{
 u64 now;
 u64 *quota;
 int ret = NFACCT_UNDERQUOTA;


 if (!(nfacct->flags & NFACCT_F_QUOTA))
  return NFACCT_NO_QUOTA;

 quota = (u64 *)nfacct->data;
 now = (nfacct->flags & NFACCT_F_QUOTA_PKTS) ?
        atomic64_read(&nfacct->pkts) : atomic64_read(&nfacct->bytes);

 ret = now > *quota;

 if (now >= *quota &&
     !test_and_set_bit(NFACCT_OVERQUOTA_BIT, &nfacct->flags)) {
  nfnl_overquota_report(net, nfacct);
 }

 return ret;
}
