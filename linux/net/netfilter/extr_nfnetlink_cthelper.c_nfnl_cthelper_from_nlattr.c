
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct nf_conn_help {int data; TYPE_1__* helper; } ;
struct nf_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_len; } ;


 int EINVAL ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int nla_data (struct nlattr*) ;
 int nla_memcpy (int ,int ,int) ;

__attribute__((used)) static int
nfnl_cthelper_from_nlattr(struct nlattr *attr, struct nf_conn *ct)
{
 struct nf_conn_help *help = nfct_help(ct);

 if (attr == ((void*)0))
  return -EINVAL;

 if (help->helper->data_len == 0)
  return -EINVAL;

 nla_memcpy(help->data, nla_data(attr), sizeof(help->data));
 return 0;
}
