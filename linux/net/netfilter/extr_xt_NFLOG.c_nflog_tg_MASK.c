#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xt_nflog_info {int flags; int /*<<< orphan*/  prefix; int /*<<< orphan*/  threshold; int /*<<< orphan*/  group; int /*<<< orphan*/  len; } ;
struct xt_action_param {struct xt_nflog_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  qthreshold; int /*<<< orphan*/  group; int /*<<< orphan*/  copy_len; } ;
struct TYPE_4__ {TYPE_1__ ulog; } ;
struct nf_loginfo {TYPE_2__ u; int /*<<< orphan*/  type; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF_LOG_F_COPY_LEN ; 
 int /*<<< orphan*/  NF_LOG_TYPE_ULOG ; 
 unsigned int XT_CONTINUE ; 
 int XT_NFLOG_F_COPY_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_loginfo*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_action_param const*) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param const*) ; 
 int /*<<< orphan*/  FUNC3 (struct xt_action_param const*) ; 
 struct net* FUNC4 (struct xt_action_param const*) ; 
 int /*<<< orphan*/  FUNC5 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC6(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct xt_nflog_info *info = par->targinfo;
	struct net *net = FUNC4(par);
	struct nf_loginfo li;

	li.type		     = NF_LOG_TYPE_ULOG;
	li.u.ulog.copy_len   = info->len;
	li.u.ulog.group	     = info->group;
	li.u.ulog.qthreshold = info->threshold;
	li.u.ulog.flags	     = 0;

	if (info->flags & XT_NFLOG_F_COPY_LEN)
		li.u.ulog.flags |= NF_LOG_F_COPY_LEN;

	FUNC0(net, FUNC1(par), FUNC2(par), skb, FUNC3(par),
		      FUNC5(par), &li, "%s", info->prefix);

	return XT_CONTINUE;
}