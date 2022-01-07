
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nf_conn {int dummy; } ;


 int NF_CT_EXT_TSTAMP ;
 int nf_ct_ext_exist (struct nf_conn const*,int ) ;
 size_t nla_total_size (int ) ;
 int nla_total_size_64bit (int) ;

__attribute__((used)) static inline size_t ctnetlink_timestamp_size(const struct nf_conn *ct)
{





 return 0;

}
