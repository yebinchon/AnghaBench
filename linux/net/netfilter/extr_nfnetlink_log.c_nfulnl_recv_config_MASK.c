#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  void* u_int16_t ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfulnl_msg_config_mode {int /*<<< orphan*/  copy_range; int /*<<< orphan*/  copy_mode; } ;
struct nfulnl_msg_config_cmd {int command; } ;
struct nfulnl_instance {scalar_t__ peer_portid; } ;
struct nfnl_log_net {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; int /*<<< orphan*/  res_id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFNL_SUBSYS_ULOG ; 
 size_t NFULA_CFG_CMD ; 
 size_t NFULA_CFG_FLAGS ; 
 size_t NFULA_CFG_MODE ; 
 size_t NFULA_CFG_NLBUFSIZ ; 
 size_t NFULA_CFG_QTHRESH ; 
 size_t NFULA_CFG_TIMEOUT ; 
#define  NFULNL_CFG_CMD_BIND 131 
#define  NFULNL_CFG_CMD_PF_BIND 130 
#define  NFULNL_CFG_CMD_PF_UNBIND 129 
#define  NFULNL_CFG_CMD_UNBIND 128 
 int NFULNL_CFG_F_CONNTRACK ; 
 int FUNC2 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC3 (struct net*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfnl_log_net*,struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC5 (struct nfnl_log_net*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfulnl_instance*) ; 
 int FUNC7 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfnl_ct_hook ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct nfnl_log_net* FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfulnl_logger ; 
 int /*<<< orphan*/  FUNC12 (struct nfulnl_instance*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfulnl_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nfulnl_instance*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC18 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC19 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC20 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 void* FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct net *net, struct sock *ctnl,
			      struct sk_buff *skb, const struct nlmsghdr *nlh,
			      const struct nlattr * const nfula[],
			      struct netlink_ext_ack *extack)
{
	struct nfgenmsg *nfmsg = FUNC20(nlh);
	u_int16_t group_num = FUNC22(nfmsg->res_id);
	struct nfulnl_instance *inst;
	struct nfulnl_msg_config_cmd *cmd = NULL;
	struct nfnl_log_net *log = FUNC10(net);
	int ret = 0;
	u16 flags = 0;

	if (nfula[NFULA_CFG_CMD]) {
		u_int8_t pf = nfmsg->nfgen_family;
		cmd = FUNC17(nfula[NFULA_CFG_CMD]);

		/* Commands without queue context */
		switch (cmd->command) {
		case NFULNL_CFG_CMD_PF_BIND:
			return FUNC7(net, pf, &nfulnl_logger);
		case NFULNL_CFG_CMD_PF_UNBIND:
			FUNC8(net, pf);
			return 0;
		}
	}

	inst = FUNC5(log, group_num);
	if (inst && inst->peer_portid != FUNC1(skb).portid) {
		ret = -EPERM;
		goto out_put;
	}

	/* Check if we support these flags in first place, dependencies should
	 * be there too not to break atomicity.
	 */
	if (nfula[NFULA_CFG_FLAGS]) {
		flags = FUNC22(FUNC18(nfula[NFULA_CFG_FLAGS]));

		if ((flags & NFULNL_CFG_F_CONNTRACK) &&
		    !FUNC23(nfnl_ct_hook)) {
#ifdef CONFIG_MODULES
			nfnl_unlock(NFNL_SUBSYS_ULOG);
			request_module("ip_conntrack_netlink");
			nfnl_lock(NFNL_SUBSYS_ULOG);
			if (rcu_access_pointer(nfnl_ct_hook)) {
				ret = -EAGAIN;
				goto out_put;
			}
#endif
			ret = -EOPNOTSUPP;
			goto out_put;
		}
	}

	if (cmd != NULL) {
		switch (cmd->command) {
		case NFULNL_CFG_CMD_BIND:
			if (inst) {
				ret = -EBUSY;
				goto out_put;
			}

			inst = FUNC3(net, group_num,
					       FUNC1(skb).portid,
					       FUNC25(FUNC1(skb).sk));
			if (FUNC0(inst)) {
				ret = FUNC2(inst);
				goto out;
			}
			break;
		case NFULNL_CFG_CMD_UNBIND:
			if (!inst) {
				ret = -ENODEV;
				goto out;
			}

			FUNC4(log, inst);
			goto out_put;
		default:
			ret = -ENOTSUPP;
			goto out_put;
		}
	} else if (!inst) {
		ret = -ENODEV;
		goto out;
	}

	if (nfula[NFULA_CFG_MODE]) {
		struct nfulnl_msg_config_mode *params =
			FUNC17(nfula[NFULA_CFG_MODE]);

		FUNC13(inst, params->copy_mode,
				FUNC21(params->copy_range));
	}

	if (nfula[NFULA_CFG_TIMEOUT]) {
		__be32 timeout = FUNC19(nfula[NFULA_CFG_TIMEOUT]);

		FUNC16(inst, FUNC21(timeout));
	}

	if (nfula[NFULA_CFG_NLBUFSIZ]) {
		__be32 nlbufsiz = FUNC19(nfula[NFULA_CFG_NLBUFSIZ]);

		FUNC14(inst, FUNC21(nlbufsiz));
	}

	if (nfula[NFULA_CFG_QTHRESH]) {
		__be32 qthresh = FUNC19(nfula[NFULA_CFG_QTHRESH]);

		FUNC15(inst, FUNC21(qthresh));
	}

	if (nfula[NFULA_CFG_FLAGS])
		FUNC12(inst, flags);

out_put:
	FUNC6(inst);
out:
	return ret;
}