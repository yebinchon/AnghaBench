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
struct tcp_metrics_block {int /*<<< orphan*/  tcpm_saddr; int /*<<< orphan*/  tcpm_daddr; int /*<<< orphan*/  tcpm_next; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inetpeer_addr {int dummy; } ;
struct genl_info {TYPE_1__* genlhdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  chain; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct inetpeer_addr*) ; 
 struct net* FUNC1 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct net*) ; 
 unsigned int FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct genl_info*,struct inetpeer_addr*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct genl_info*,struct inetpeer_addr*) ; 
 struct tcp_metrics_block* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct sk_buff*,struct tcp_metrics_block*) ; 
 TYPE_2__* tcp_metrics_hash ; 
 int /*<<< orphan*/  tcp_metrics_hash_log ; 
 int /*<<< orphan*/  tcp_metrics_nl_family ; 
 int /*<<< orphan*/  FUNC16 (struct tcp_metrics_block*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct genl_info *info)
{
	struct tcp_metrics_block *tm;
	struct inetpeer_addr saddr, daddr;
	unsigned int hash;
	struct sk_buff *msg;
	struct net *net = FUNC1(info);
	void *reply;
	int ret;
	bool src = true;

	ret = FUNC10(info, &daddr, &hash, 0);
	if (ret < 0)
		return ret;

	ret = FUNC11(info, &saddr);
	if (ret < 0)
		src = false;

	msg = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	reply = FUNC3(msg, info, &tcp_metrics_nl_family, 0,
				  info->genlhdr->cmd);
	if (!reply)
		goto nla_put_failure;

	hash ^= FUNC7(net);
	hash = FUNC5(hash, tcp_metrics_hash_log);
	ret = -ESRCH;
	FUNC13();
	for (tm = FUNC12(tcp_metrics_hash[hash].chain); tm;
	     tm = FUNC12(tm->tcpm_next)) {
		if (FUNC0(&tm->tcpm_daddr, &daddr) &&
		    (!src || FUNC0(&tm->tcpm_saddr, &saddr)) &&
		    FUNC6(FUNC16(tm), net)) {
			ret = FUNC15(msg, tm);
			break;
		}
	}
	FUNC14();
	if (ret < 0)
		goto out_free;

	FUNC2(msg, reply);
	return FUNC4(msg, info);

nla_put_failure:
	ret = -EMSGSIZE;

out_free:
	FUNC8(msg);
	return ret;
}