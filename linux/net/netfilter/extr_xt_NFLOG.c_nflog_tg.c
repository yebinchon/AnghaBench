
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_nflog_info {int flags; int prefix; int threshold; int group; int len; } ;
struct xt_action_param {struct xt_nflog_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; int qthreshold; int group; int copy_len; } ;
struct TYPE_4__ {TYPE_1__ ulog; } ;
struct nf_loginfo {TYPE_2__ u; int type; } ;
struct net {int dummy; } ;


 int NF_LOG_F_COPY_LEN ;
 int NF_LOG_TYPE_ULOG ;
 unsigned int XT_CONTINUE ;
 int XT_NFLOG_F_COPY_LEN ;
 int nf_log_packet (struct net*,int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,char*,int ) ;
 int xt_family (struct xt_action_param const*) ;
 int xt_hooknum (struct xt_action_param const*) ;
 int xt_in (struct xt_action_param const*) ;
 struct net* xt_net (struct xt_action_param const*) ;
 int xt_out (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
nflog_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_nflog_info *info = par->targinfo;
 struct net *net = xt_net(par);
 struct nf_loginfo li;

 li.type = NF_LOG_TYPE_ULOG;
 li.u.ulog.copy_len = info->len;
 li.u.ulog.group = info->group;
 li.u.ulog.qthreshold = info->threshold;
 li.u.ulog.flags = 0;

 if (info->flags & XT_NFLOG_F_COPY_LEN)
  li.u.ulog.flags |= NF_LOG_F_COPY_LEN;

 nf_log_packet(net, xt_family(par), xt_hooknum(par), skb, xt_in(par),
        xt_out(par), &li, "%s", info->prefix);

 return XT_CONTINUE;
}
