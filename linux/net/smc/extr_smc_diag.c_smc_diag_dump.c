
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int smc_diag_dump_proto (int *,struct sk_buff*,struct netlink_callback*) ;
 int smc_proto ;
 int smc_proto6 ;

__attribute__((used)) static int smc_diag_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int rc = 0;

 rc = smc_diag_dump_proto(&smc_proto, skb, cb);
 if (!rc)
  rc = smc_diag_dump_proto(&smc_proto6, skb, cb);
 return rc;
}
