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
struct nilfs_sc_info {int /*<<< orphan*/  sc_datablk_cnt; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  i_bmap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC2 (struct nilfs_sc_info*,struct buffer_head*,struct inode*,int) ; 

__attribute__((used)) static int FUNC3(struct nilfs_sc_info *sci,
				  struct buffer_head *bh, struct inode *inode)
{
	int err;

	err = FUNC1(FUNC0(inode)->i_bmap, bh);
	if (err < 0)
		return err;

	err = FUNC2(sci, bh, inode, sizeof(__le64));
	if (!err)
		sci->sc_datablk_cnt++;
	return err;
}