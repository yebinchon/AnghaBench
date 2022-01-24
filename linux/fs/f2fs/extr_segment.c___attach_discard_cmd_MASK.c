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
struct rb_node {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct discard_cmd_control {int /*<<< orphan*/  root; } ;
struct discard_cmd {int /*<<< orphan*/  rb_node; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {struct discard_cmd_control* dcc_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 struct discard_cmd* FUNC1 (struct f2fs_sb_info*,struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static struct discard_cmd *FUNC4(struct f2fs_sb_info *sbi,
				struct block_device *bdev, block_t lstart,
				block_t start, block_t len,
				struct rb_node *parent, struct rb_node **p,
				bool leftmost)
{
	struct discard_cmd_control *dcc = FUNC0(sbi)->dcc_info;
	struct discard_cmd *dc;

	dc = FUNC1(sbi, bdev, lstart, start, len);

	FUNC3(&dc->rb_node, parent, p);
	FUNC2(&dc->rb_node, &dcc->root, leftmost);

	return dc;
}