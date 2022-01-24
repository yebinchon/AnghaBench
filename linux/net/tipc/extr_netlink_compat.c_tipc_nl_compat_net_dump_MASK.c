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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_NET ; 
 size_t TIPC_NLA_NET_ID ; 
 int /*<<< orphan*/  TIPC_NLA_NET_MAX ; 
 int /*<<< orphan*/  TIPC_TLV_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct tipc_nl_compat_msg *msg,
				   struct nlattr **attrs)
{
	__be32 id;
	struct nlattr *net[TIPC_NLA_NET_MAX + 1];
	int err;

	if (!attrs[TIPC_NLA_NET])
		return -EINVAL;

	err = FUNC2(net, TIPC_NLA_NET_MAX,
					  attrs[TIPC_NLA_NET], NULL, NULL);
	if (err)
		return err;

	id = FUNC0(FUNC1(net[TIPC_NLA_NET_ID]));

	return FUNC3(msg->rep, TIPC_TLV_UNSIGNED, &id, sizeof(id));
}