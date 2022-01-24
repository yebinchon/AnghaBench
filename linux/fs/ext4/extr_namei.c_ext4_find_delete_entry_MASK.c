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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct inode*,struct qstr const*,struct ext4_dir_entry_2**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(handle_t *handle, struct inode *dir,
				  const struct qstr *d_name)
{
	int retval = -ENOENT;
	struct buffer_head *bh;
	struct ext4_dir_entry_2 *de;

	bh = FUNC4(dir, d_name, &de, NULL);
	if (FUNC0(bh))
		return FUNC1(bh);
	if (bh) {
		retval = FUNC3(handle, dir, de, bh);
		FUNC2(bh);
	}
	return retval;
}