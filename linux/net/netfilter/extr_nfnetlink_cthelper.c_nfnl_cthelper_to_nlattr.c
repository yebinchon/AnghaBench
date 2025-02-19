
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn_help {int data; TYPE_1__* helper; } ;
struct nf_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_len; } ;


 int CTA_HELP_INFO ;
 int ENOSPC ;
 struct nf_conn_help* nfct_help (struct nf_conn const*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,int *) ;

__attribute__((used)) static int
nfnl_cthelper_to_nlattr(struct sk_buff *skb, const struct nf_conn *ct)
{
 const struct nf_conn_help *help = nfct_help(ct);

 if (help->helper->data_len &&
     nla_put(skb, CTA_HELP_INFO, help->helper->data_len, &help->data))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -ENOSPC;
}
