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
struct inode {int dummy; } ;
struct dnode_of_data {scalar_t__ ofs_in_node; int /*<<< orphan*/  node_page; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dnode_of_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode_of_data*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *inode, pgoff_t pg_start, pgoff_t pg_end)
{
	int err;

	while (pg_start < pg_end) {
		struct dnode_of_data dn;
		pgoff_t end_offset, count;

		FUNC8(&dn, inode, NULL, NULL, 0);
		err = FUNC3(&dn, pg_start, LOOKUP_NODE);
		if (err) {
			if (err == -ENOENT) {
				pg_start = FUNC4(&dn,
								pg_start);
				continue;
			}
			return err;
		}

		end_offset = FUNC0(dn.node_page, inode);
		count = FUNC7(end_offset - dn.ofs_in_node, pg_end - pg_start);

		FUNC2(FUNC1(inode), count == 0 || count > end_offset);

		FUNC6(&dn, count);
		FUNC5(&dn);

		pg_start += count;
	}
	return 0;
}