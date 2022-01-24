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
struct hw {int dummy; } ;
struct daio_mgr_ctrl_blk {void* spictl; void* spoctl; void* i2sctl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2SCTL ; 
 int /*<<< orphan*/  SPICTL ; 
 int /*<<< orphan*/  SPOCTL ; 
 void* FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 struct daio_mgr_ctrl_blk* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hw *hw, void **rblk)
{
	struct daio_mgr_ctrl_blk *blk;

	*rblk = NULL;
	blk = FUNC1(sizeof(*blk), GFP_KERNEL);
	if (!blk)
		return -ENOMEM;

	blk->i2sctl = FUNC0(hw, I2SCTL);
	blk->spoctl = FUNC0(hw, SPOCTL);
	blk->spictl = FUNC0(hw, SPICTL);

	*rblk = blk;

	return 0;
}