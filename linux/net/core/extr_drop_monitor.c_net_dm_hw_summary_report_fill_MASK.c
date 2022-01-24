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
struct sk_buff {int dummy; } ;
struct net_dm_hw_entries {int dummy; } ;
struct net_dm_alert_msg {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  anc_hdr ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_CMD_ALERT ; 
 int /*<<< orphan*/  NLA_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct net_dm_hw_entries const*) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct net_dm_alert_msg*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *msg,
			      const struct net_dm_hw_entries *hw_entries)
{
	struct net_dm_alert_msg anc_hdr = { 0 };
	void *hdr;
	int rc;

	hdr = FUNC2(msg, 0, 0, &net_drop_monitor_family, 0,
			  NET_DM_CMD_ALERT);
	if (!hdr)
		return -EMSGSIZE;

	/* We need to put the ancillary header in order not to break user
	 * space.
	 */
	if (FUNC4(msg, NLA_UNSPEC, sizeof(anc_hdr), &anc_hdr))
		goto nla_put_failure;

	rc = FUNC3(msg, hw_entries);
	if (rc)
		goto nla_put_failure;

	FUNC1(msg, hdr);

	return 0;

nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}