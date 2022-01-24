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
struct sk_buff {int dummy; } ;
struct batadv_algo_ops {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_ALGO_NAME ; 
 int /*<<< orphan*/  BATADV_CMD_GET_ROUTING_ALGOS ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg, u32 portid, u32 seq,
				  struct batadv_algo_ops *bat_algo_ops)
{
	void *hdr;

	hdr = FUNC2(msg, portid, seq, &batadv_netlink_family,
			  NLM_F_MULTI, BATADV_CMD_GET_ROUTING_ALGOS);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC3(msg, BATADV_ATTR_ALGO_NAME, bat_algo_ops->name))
		goto nla_put_failure;

	FUNC1(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}