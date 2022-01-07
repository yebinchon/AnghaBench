
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct smc_clc_msg_proposal_prefix {int ipv6_prefixes_cnt; } ;
struct dst_entry {int dev; } ;


 int ENODEV ;
 int ENOTCONN ;
 int dst_release (struct dst_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* sk_dst_get (int ) ;
 int smc_clc_prfx_match4_rcu (int ,struct smc_clc_msg_proposal_prefix*) ;
 int smc_clc_prfx_match6_rcu (int ,struct smc_clc_msg_proposal_prefix*) ;

int smc_clc_prfx_match(struct socket *clcsock,
         struct smc_clc_msg_proposal_prefix *prop)
{
 struct dst_entry *dst = sk_dst_get(clcsock->sk);
 int rc;

 if (!dst) {
  rc = -ENOTCONN;
  goto out;
 }
 if (!dst->dev) {
  rc = -ENODEV;
  goto out_rel;
 }
 rcu_read_lock();
 if (!prop->ipv6_prefixes_cnt)
  rc = smc_clc_prfx_match4_rcu(dst->dev, prop);
 else
  rc = smc_clc_prfx_match6_rcu(dst->dev, prop);
 rcu_read_unlock();
out_rel:
 dst_release(dst);
out:
 return rc;
}
