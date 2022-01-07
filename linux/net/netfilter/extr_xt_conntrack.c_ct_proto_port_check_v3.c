
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xt_conntrack_mtinfo3 {int match_flags; scalar_t__ l4proto; int invert_flags; int repldst_port_high; int repldst_port; int replsrc_port_high; int replsrc_port; int origdst_port_high; int origdst_port; int origsrc_port_high; int origsrc_port; } ;
struct TYPE_9__ {int all; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_7__ {int all; } ;
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
 int ntohs (int ) ;
 int port_match (int ,int ,int ,int) ;

__attribute__((used)) static inline bool
ct_proto_port_check_v3(const struct xt_conntrack_mtinfo3 *info,
         const struct nf_conn *ct)
{
 const struct nf_conntrack_tuple *tuple;

 tuple = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
 if ((info->match_flags & XT_CONNTRACK_PROTO) &&
     (nf_ct_protonum(ct) == info->l4proto) ^
     !(info->invert_flags & XT_CONNTRACK_PROTO))
  return 0;


 if ((info->match_flags & XT_CONNTRACK_ORIGSRC_PORT) &&
     !port_match(info->origsrc_port, info->origsrc_port_high,
   ntohs(tuple->src.u.all),
   info->invert_flags & XT_CONNTRACK_ORIGSRC_PORT))
  return 0;

 if ((info->match_flags & XT_CONNTRACK_ORIGDST_PORT) &&
     !port_match(info->origdst_port, info->origdst_port_high,
   ntohs(tuple->dst.u.all),
   info->invert_flags & XT_CONNTRACK_ORIGDST_PORT))
  return 0;

 tuple = &ct->tuplehash[IP_CT_DIR_REPLY].tuple;

 if ((info->match_flags & XT_CONNTRACK_REPLSRC_PORT) &&
     !port_match(info->replsrc_port, info->replsrc_port_high,
   ntohs(tuple->src.u.all),
   info->invert_flags & XT_CONNTRACK_REPLSRC_PORT))
  return 0;

 if ((info->match_flags & XT_CONNTRACK_REPLDST_PORT) &&
     !port_match(info->repldst_port, info->repldst_port_high,
   ntohs(tuple->dst.u.all),
   info->invert_flags & XT_CONNTRACK_REPLDST_PORT))
  return 0;

 return 1;
}
