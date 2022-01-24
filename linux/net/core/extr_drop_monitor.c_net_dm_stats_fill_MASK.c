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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NET_DM_CMD_STATS_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg, struct genl_info *info)
{
	void *hdr;
	int rc;

	hdr = FUNC2(msg, info->snd_portid, info->snd_seq,
			  &net_drop_monitor_family, 0, NET_DM_CMD_STATS_NEW);
	if (!hdr)
		return -EMSGSIZE;

	rc = FUNC4(msg);
	if (rc)
		goto nla_put_failure;

	rc = FUNC3(msg);
	if (rc)
		goto nla_put_failure;

	FUNC1(msg, hdr);

	return 0;

nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}