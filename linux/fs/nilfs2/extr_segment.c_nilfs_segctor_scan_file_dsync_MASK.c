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
struct nilfs_sc_info {int /*<<< orphan*/  sc_dsync_end; int /*<<< orphan*/  sc_dsync_start; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_buffers ; 
 int /*<<< orphan*/  nilfs_collect_file_data ; 
 size_t FUNC2 (struct inode*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nilfs_sc_info*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_sc_info*,struct inode*) ; 

__attribute__((used)) static int FUNC6(struct nilfs_sc_info *sci,
					 struct inode *inode)
{
	FUNC1(data_buffers);
	size_t n, rest = FUNC4(sci);
	int err;

	n = FUNC2(inode, &data_buffers, rest + 1,
					    sci->sc_dsync_start,
					    sci->sc_dsync_end);

	err = FUNC3(sci, inode, &data_buffers,
					  nilfs_collect_file_data);
	if (!err) {
		FUNC5(sci, inode);
		FUNC0(n > rest);
		/* always receive -E2BIG or true error if n > rest */
	}
	return err;
}