
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSH_BASE_HDR_LEN ;
 int NSH_CTX_HDRS_MAX_LEN ;
 size_t nla_total_size (int ) ;

__attribute__((used)) static size_t ovs_nsh_key_attr_size(void)
{



 return nla_total_size(NSH_BASE_HDR_LEN)




  + nla_total_size(NSH_CTX_HDRS_MAX_LEN);
}
