
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nf_conn {int dummy; } ;


 int NF_CT_EXT_ACCT ;
 int nf_ct_ext_exist (struct nf_conn const*,int ) ;
 int nla_total_size (int ) ;
 int nla_total_size_64bit (int) ;

__attribute__((used)) static inline size_t ctnetlink_acct_size(const struct nf_conn *ct)
{
 if (!nf_ct_ext_exist(ct, NF_CT_EXT_ACCT))
  return 0;
 return 2 * nla_total_size(0)
        + 2 * nla_total_size_64bit(sizeof(uint64_t))
        + 2 * nla_total_size_64bit(sizeof(uint64_t))
        ;
}
