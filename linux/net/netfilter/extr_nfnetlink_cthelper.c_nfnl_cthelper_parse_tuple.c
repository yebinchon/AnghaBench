
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_4__ {int protonum; } ;
struct TYPE_3__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;


 int EINVAL ;
 size_t NFCTH_TUPLE_L3PROTONUM ;
 size_t NFCTH_TUPLE_L4PROTONUM ;
 int NFCTH_TUPLE_MAX ;
 int memset (struct nf_conntrack_tuple*,int ,int) ;
 int nfnl_cthelper_tuple_pol ;
 int nla_get_be16 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int ntohs (int ) ;

__attribute__((used)) static int
nfnl_cthelper_parse_tuple(struct nf_conntrack_tuple *tuple,
     const struct nlattr *attr)
{
 int err;
 struct nlattr *tb[NFCTH_TUPLE_MAX+1];

 err = nla_parse_nested_deprecated(tb, NFCTH_TUPLE_MAX, attr,
       nfnl_cthelper_tuple_pol, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFCTH_TUPLE_L3PROTONUM] || !tb[NFCTH_TUPLE_L4PROTONUM])
  return -EINVAL;


 memset(tuple, 0, sizeof(struct nf_conntrack_tuple));

 tuple->src.l3num = ntohs(nla_get_be16(tb[NFCTH_TUPLE_L3PROTONUM]));
 tuple->dst.protonum = nla_get_u8(tb[NFCTH_TUPLE_L4PROTONUM]);

 return 0;
}
