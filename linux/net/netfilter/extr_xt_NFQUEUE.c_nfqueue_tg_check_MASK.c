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
typedef  int u32 ;
struct xt_tgchk_param {TYPE_1__* target; struct xt_NFQ_info_v3* targinfo; } ;
struct xt_NFQ_info_v3 {int queues_total; int queuenum; int flags; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int NFQ_FLAG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jhash_initval ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(const struct xt_tgchk_param *par)
{
	const struct xt_NFQ_info_v3 *info = par->targinfo;
	u32 maxid;

	FUNC0(&jhash_initval);

	if (info->queues_total == 0) {
		FUNC1("number of total queues is 0\n");
		return -EINVAL;
	}
	maxid = info->queues_total - 1 + info->queuenum;
	if (maxid > 0xffff) {
		FUNC1("number of queues (%u) out of range (got %u)\n",
				    info->queues_total, maxid);
		return -ERANGE;
	}
	if (par->target->revision == 2 && info->flags > 1)
		return -EINVAL;
	if (par->target->revision == 3 && info->flags & ~NFQ_FLAG_MASK)
		return -EINVAL;

	return 0;
}