
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_log_info {int prefix; int logflags; int level; } ;
struct xt_action_param {struct xt_log_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int logflags; int level; } ;
struct TYPE_4__ {TYPE_1__ log; } ;
struct nf_loginfo {TYPE_2__ u; int type; } ;
struct net {int dummy; } ;


 int NF_LOG_TYPE_LOG ;
 unsigned int XT_CONTINUE ;
 int nf_log_packet (struct net*,int ,int ,struct sk_buff*,int ,int ,struct nf_loginfo*,char*,int ) ;
 int xt_family (struct xt_action_param const*) ;
 int xt_hooknum (struct xt_action_param const*) ;
 int xt_in (struct xt_action_param const*) ;
 struct net* xt_net (struct xt_action_param const*) ;
 int xt_out (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
log_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_log_info *loginfo = par->targinfo;
 struct net *net = xt_net(par);
 struct nf_loginfo li;

 li.type = NF_LOG_TYPE_LOG;
 li.u.log.level = loginfo->level;
 li.u.log.logflags = loginfo->logflags;

 nf_log_packet(net, xt_family(par), xt_hooknum(par), skb, xt_in(par),
        xt_out(par), &li, "%s", loginfo->prefix);
 return XT_CONTINUE;
}
