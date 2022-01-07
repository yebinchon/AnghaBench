
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
union nf_conntrack_man_proto {int all; TYPE_2__ icmp; } ;
struct TYPE_11__ {int all; } ;
struct TYPE_12__ {int protonum; TYPE_5__ u; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_9__ {int all; TYPE_1__ icmp; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_4__ src; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be16 ;
 int NF_NAT_MANIP_SRC ;
 int ntohs (int ) ;

__attribute__((used)) static bool l4proto_in_range(const struct nf_conntrack_tuple *tuple,
        enum nf_nat_manip_type maniptype,
        const union nf_conntrack_man_proto *min,
        const union nf_conntrack_man_proto *max)
{
 __be16 port;

 switch (tuple->dst.protonum) {
 case 133:
 case 132:
  return ntohs(tuple->src.u.icmp.id) >= ntohs(min->icmp.id) &&
         ntohs(tuple->src.u.icmp.id) <= ntohs(max->icmp.id);
 case 134:
 case 130:
 case 129:
 case 128:
 case 135:
 case 131:
  if (maniptype == NF_NAT_MANIP_SRC)
   port = tuple->src.u.all;
  else
   port = tuple->dst.u.all;

  return ntohs(port) >= ntohs(min->all) &&
         ntohs(port) <= ntohs(max->all);
 default:
  return 1;
 }
}
