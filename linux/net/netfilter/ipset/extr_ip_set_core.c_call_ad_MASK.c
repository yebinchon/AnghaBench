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
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlmsgerr {int error; int /*<<< orphan*/  msg; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int dummy; } ;
struct ip_set {int /*<<< orphan*/  lock; TYPE_1__* variant; } ;
typedef  enum ipset_adt { ____Placeholder_ipset_adt } ipset_adt ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int (* resize ) (struct ip_set*,int) ;int (* uadt ) (struct ip_set*,struct nlattr**,int,int*,int,int) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPSET_ATTR_CMD_MAX ; 
 size_t IPSET_ATTR_LINENO ; 
 int IPSET_ERR_EXIST ; 
 int IPSET_FLAG_EXIST ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_set_adt_policy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nlmsghdr*,scalar_t__) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nlmsgerr* FUNC7 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ip_set*,int) ; 
 int FUNC16 (struct ip_set*,struct nlattr**,int,int*,int,int) ; 

__attribute__((used)) static int
FUNC17(struct sock *ctnl, struct sk_buff *skb, struct ip_set *set,
	struct nlattr *tb[], enum ipset_adt adt,
	u32 flags, bool use_lineno)
{
	int ret;
	u32 lineno = 0;
	bool eexist = flags & IPSET_FLAG_EXIST, retried = false;

	do {
		FUNC13(&set->lock);
		ret = set->variant->uadt(set, tb, adt, &lineno, flags, retried);
		FUNC14(&set->lock);
		retried = true;
	} while (ret == -EAGAIN &&
		 set->variant->resize &&
		 (ret = set->variant->resize(set, retried)) == 0);

	if (!ret || (ret == -IPSET_ERR_EXIST && eexist))
		return 0;
	if (lineno && use_lineno) {
		/* Error in restore/batch mode: send back lineno */
		struct nlmsghdr *rep, *nlh = FUNC9(skb);
		struct sk_buff *skb2;
		struct nlmsgerr *errmsg;
		size_t payload = FUNC3(SIZE_MAX,
				     sizeof(*errmsg) + FUNC10(nlh));
		int min_len = FUNC12(sizeof(struct nfgenmsg));
		struct nlattr *cda[IPSET_ATTR_CMD_MAX + 1];
		struct nlattr *cmdattr;
		u32 *errline;

		skb2 = FUNC11(payload, GFP_KERNEL);
		if (!skb2)
			return -ENOMEM;
		rep = FUNC1(skb2, FUNC0(skb).portid,
				  nlh->nlmsg_seq, NLMSG_ERROR, payload, 0);
		errmsg = FUNC7(rep);
		errmsg->error = ret;
		FUNC2(&errmsg->msg, nlh, nlh->nlmsg_len);
		cmdattr = (void *)&errmsg->msg + min_len;

		ret = FUNC6(cda, IPSET_ATTR_CMD_MAX, cmdattr,
				nlh->nlmsg_len - min_len, ip_set_adt_policy,
				NULL);

		if (ret) {
			FUNC8(skb2);
			return ret;
		}
		errline = FUNC5(cda[IPSET_ATTR_LINENO]);

		*errline = lineno;

		FUNC4(ctnl, skb2, FUNC0(skb).portid,
				MSG_DONTWAIT);
		/* Signal netlink not to send its ACK/errmsg.  */
		return -EINTR;
	}

	return ret;
}