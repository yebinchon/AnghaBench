
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;


 int CTA_USE ;
 int atomic_read (int *) ;
 int htonl (int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ctnetlink_dump_use(struct sk_buff *skb, const struct nf_conn *ct)
{
 if (nla_put_be32(skb, CTA_USE, htonl(atomic_read(&ct->ct_general.use))))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
