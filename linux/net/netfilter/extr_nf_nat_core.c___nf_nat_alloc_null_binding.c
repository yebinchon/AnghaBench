
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_nat_range2 {union nf_inet_addr max_addr; union nf_inet_addr min_addr; int flags; } ;
struct nf_conn {TYPE_4__* tuplehash; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
struct TYPE_6__ {union nf_inet_addr u3; } ;
struct TYPE_5__ {union nf_inet_addr u3; } ;
struct TYPE_7__ {TYPE_2__ src; TYPE_1__ dst; } ;
struct TYPE_8__ {TYPE_3__ tuple; } ;


 size_t IP_CT_DIR_REPLY ;
 int NF_NAT_MANIP_SRC ;
 int NF_NAT_RANGE_MAP_IPS ;
 unsigned int nf_nat_setup_info (struct nf_conn*,struct nf_nat_range2*,int) ;

__attribute__((used)) static unsigned int
__nf_nat_alloc_null_binding(struct nf_conn *ct, enum nf_nat_manip_type manip)
{




 union nf_inet_addr ip =
  (manip == NF_NAT_MANIP_SRC ?
  ct->tuplehash[IP_CT_DIR_REPLY].tuple.dst.u3 :
  ct->tuplehash[IP_CT_DIR_REPLY].tuple.src.u3);
 struct nf_nat_range2 range = {
  .flags = NF_NAT_RANGE_MAP_IPS,
  .min_addr = ip,
  .max_addr = ip,
 };
 return nf_nat_setup_info(ct, &range, manip);
}
