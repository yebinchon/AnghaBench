
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xt_conntrack_mtinfo2 {int match_flags; scalar_t__ l4proto; int invert_flags; scalar_t__ origsrc_port; scalar_t__ origdst_port; scalar_t__ replsrc_port; scalar_t__ repldst_port; } ;
struct TYPE_9__ {scalar_t__ all; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_7__ {scalar_t__ all; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_5__ dst; TYPE_3__ src; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct TYPE_6__ {struct nf_conntrack_tuple tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int XT_CONNTRACK_ORIGDST_PORT ;
 int XT_CONNTRACK_ORIGSRC_PORT ;
 int XT_CONNTRACK_PROTO ;
 int XT_CONNTRACK_REPLDST_PORT ;
 int XT_CONNTRACK_REPLSRC_PORT ;
 scalar_t__ nf_ct_protonum (struct nf_conn const*) ;

__attribute__((used)) static inline bool
ct_proto_port_check(const struct xt_conntrack_mtinfo2 *info,
                    const struct nf_conn *ct)
{
 const struct nf_conntrack_tuple *tuple;

 tuple = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
 if ((info->match_flags & XT_CONNTRACK_PROTO) &&
     (nf_ct_protonum(ct) == info->l4proto) ^
     !(info->invert_flags & XT_CONNTRACK_PROTO))
  return 0;


 if ((info->match_flags & XT_CONNTRACK_ORIGSRC_PORT) &&
     (tuple->src.u.all == info->origsrc_port) ^
     !(info->invert_flags & XT_CONNTRACK_ORIGSRC_PORT))
  return 0;

 if ((info->match_flags & XT_CONNTRACK_ORIGDST_PORT) &&
     (tuple->dst.u.all == info->origdst_port) ^
     !(info->invert_flags & XT_CONNTRACK_ORIGDST_PORT))
  return 0;

 tuple = &ct->tuplehash[IP_CT_DIR_REPLY].tuple;

 if ((info->match_flags & XT_CONNTRACK_REPLSRC_PORT) &&
     (tuple->src.u.all == info->replsrc_port) ^
     !(info->invert_flags & XT_CONNTRACK_REPLSRC_PORT))
  return 0;

 if ((info->match_flags & XT_CONNTRACK_REPLDST_PORT) &&
     (tuple->dst.u.all == info->repldst_port) ^
     !(info->invert_flags & XT_CONNTRACK_REPLDST_PORT))
  return 0;

 return 1;
}
