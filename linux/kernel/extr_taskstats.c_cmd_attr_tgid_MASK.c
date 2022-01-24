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
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TASKSTATS_CMD_ATTR_TGID ; 
 int /*<<< orphan*/  TASKSTATS_CMD_NEW ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_TGID ; 
 int FUNC0 (int /*<<< orphan*/ ,struct taskstats*) ; 
 struct taskstats* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**,size_t) ; 
 int FUNC5 (struct sk_buff*,struct genl_info*) ; 
 size_t FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct genl_info *info)
{
	struct taskstats *stats;
	struct sk_buff *rep_skb;
	size_t size;
	u32 tgid;
	int rc;

	size = FUNC6();

	rc = FUNC4(info, TASKSTATS_CMD_NEW, &rep_skb, size);
	if (rc < 0)
		return rc;

	rc = -EINVAL;
	tgid = FUNC2(info->attrs[TASKSTATS_CMD_ATTR_TGID]);
	stats = FUNC1(rep_skb, TASKSTATS_TYPE_TGID, tgid);
	if (!stats)
		goto err;

	rc = FUNC0(tgid, stats);
	if (rc < 0)
		goto err;
	return FUNC5(rep_skb, info);
err:
	FUNC3(rep_skb);
	return rc;
}