#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_nl_compat_msg {int dummy; } ;
struct tipc_nl_compat_cmd_dump {int /*<<< orphan*/  format; int /*<<< orphan*/  dumpit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_REF ; 
 int /*<<< orphan*/  TIPC_NL_PUBL_GET ; 
 int FUNC0 (struct tipc_nl_compat_cmd_dump*,struct tipc_nl_compat_msg*,struct sk_buff*) ; 
 int /*<<< orphan*/  __tipc_nl_compat_publ_dump ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 int /*<<< orphan*/  tipc_nl_publ_dump ; 

__attribute__((used)) static int FUNC8(struct tipc_nl_compat_msg *msg, u32 sock)
{
	int err;
	void *hdr;
	struct nlattr *nest;
	struct sk_buff *args;
	struct tipc_nl_compat_cmd_dump dump;

	args = FUNC7(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!args)
		return -ENOMEM;

	hdr = FUNC2(args, 0, 0, &tipc_genl_family, NLM_F_MULTI,
			  TIPC_NL_PUBL_GET);
	if (!hdr) {
		FUNC3(args);
		return -EMSGSIZE;
	}

	nest = FUNC5(args, TIPC_NLA_SOCK);
	if (!nest) {
		FUNC3(args);
		return -EMSGSIZE;
	}

	if (FUNC6(args, TIPC_NLA_SOCK_REF, sock)) {
		FUNC3(args);
		return -EMSGSIZE;
	}

	FUNC4(args, nest);
	FUNC1(args, hdr);

	dump.dumpit = tipc_nl_publ_dump;
	dump.format = __tipc_nl_compat_publ_dump;

	err = FUNC0(&dump, msg, args);

	FUNC3(args);

	return err;
}