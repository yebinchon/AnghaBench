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
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct tipc_bearer {TYPE_1__* media; int /*<<< orphan*/  mtu; int /*<<< orphan*/  window; int /*<<< orphan*/  tolerance; int /*<<< orphan*/  priority; int /*<<< orphan*/  name; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ type_id; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ TIPC_MEDIA_TYPE_UDP ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_NAME ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_MTU ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_PRIO ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_TOL ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_WIN ; 
 int /*<<< orphan*/  TIPC_NL_BEARER_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 scalar_t__ FUNC8 (struct tipc_nl_msg*,struct tipc_bearer*) ; 

__attribute__((used)) static int FUNC9(struct tipc_nl_msg *msg,
				struct tipc_bearer *bearer, int nlflags)
{
	void *hdr;
	struct nlattr *attrs;
	struct nlattr *prop;

	hdr = FUNC2(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  nlflags, TIPC_NL_BEARER_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC5(msg->skb, TIPC_NLA_BEARER);
	if (!attrs)
		goto msg_full;

	if (FUNC6(msg->skb, TIPC_NLA_BEARER_NAME, bearer->name))
		goto attr_msg_full;

	prop = FUNC5(msg->skb, TIPC_NLA_BEARER_PROP);
	if (!prop)
		goto prop_msg_full;
	if (FUNC7(msg->skb, TIPC_NLA_PROP_PRIO, bearer->priority))
		goto prop_msg_full;
	if (FUNC7(msg->skb, TIPC_NLA_PROP_TOL, bearer->tolerance))
		goto prop_msg_full;
	if (FUNC7(msg->skb, TIPC_NLA_PROP_WIN, bearer->window))
		goto prop_msg_full;
	if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP)
		if (FUNC7(msg->skb, TIPC_NLA_PROP_MTU, bearer->mtu))
			goto prop_msg_full;

	FUNC4(msg->skb, prop);

#ifdef CONFIG_TIPC_MEDIA_UDP
	if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP) {
		if (tipc_udp_nl_add_bearer_data(msg, bearer))
			goto attr_msg_full;
	}
#endif

	FUNC4(msg->skb, attrs);
	FUNC1(msg->skb, hdr);

	return 0;

prop_msg_full:
	FUNC3(msg->skb, prop);
attr_msg_full:
	FUNC3(msg->skb, attrs);
msg_full:
	FUNC0(msg->skb, hdr);

	return -EMSGSIZE;
}