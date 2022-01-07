
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int flags; void* queue_num; } ;


 int EBUSY ;
 size_t NFCTH_POLICY ;
 size_t NFCTH_PRIV_DATA_LEN ;
 size_t NFCTH_QUEUE_NUM ;
 size_t NFCTH_STATUS ;


 int NF_CT_HELPER_F_CONFIGURED ;
 int nfnl_cthelper_update_policy (struct nf_conntrack_helper*,struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int
nfnl_cthelper_update(const struct nlattr * const tb[],
       struct nf_conntrack_helper *helper)
{
 int ret;

 if (tb[NFCTH_PRIV_DATA_LEN])
  return -EBUSY;

 if (tb[NFCTH_POLICY]) {
  ret = nfnl_cthelper_update_policy(helper, tb[NFCTH_POLICY]);
  if (ret < 0)
   return ret;
 }
 if (tb[NFCTH_QUEUE_NUM])
  helper->queue_num = ntohl(nla_get_be32(tb[NFCTH_QUEUE_NUM]));

 if (tb[NFCTH_STATUS]) {
  int status = ntohl(nla_get_be32(tb[NFCTH_STATUS]));

  switch(status) {
  case 128:
   helper->flags |= NF_CT_HELPER_F_CONFIGURED;
   break;
  case 129:
   helper->flags &= ~NF_CT_HELPER_F_CONFIGURED;
   break;
  }
 }
 return 0;
}
