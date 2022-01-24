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
struct super_block {int dummy; } ;
struct ocfs2_mem_dqinfo {struct buffer_head* dqi_libh; } ;
struct mem_dqinfo {scalar_t__ dqi_priv; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ,struct mem_dqinfo*) ; 
 int /*<<< orphan*/  olq_update_info ; 
 struct mem_dqinfo* FUNC2 (struct super_block*,int) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int type)
{
	struct mem_dqinfo *info = FUNC2(sb, type);
	struct buffer_head *bh = ((struct ocfs2_mem_dqinfo *)info->dqi_priv)
						->dqi_libh;
	int status;

	status = FUNC1(FUNC3(sb)->files[type], bh, olq_update_info,
				 info);
	if (status < 0) {
		FUNC0(status);
		return -1;
	}

	return 0;
}