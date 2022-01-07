
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; } ;
struct nf_nat_range2 {int max_proto; int min_proto; TYPE_1__ max_addr; TYPE_1__ min_addr; int flags; TYPE_1__ base_proto; } ;
struct nf_nat_ipv4_range {int max; int min; int max_ip; int min_ip; int flags; } ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void xt_nat_convert_range(struct nf_nat_range2 *dst,
     const struct nf_nat_ipv4_range *src)
{
 memset(&dst->min_addr, 0, sizeof(dst->min_addr));
 memset(&dst->max_addr, 0, sizeof(dst->max_addr));
 memset(&dst->base_proto, 0, sizeof(dst->base_proto));

 dst->flags = src->flags;
 dst->min_addr.ip = src->min_ip;
 dst->max_addr.ip = src->max_ip;
 dst->min_proto = src->min;
 dst->max_proto = src->max;
}
