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
struct ext4_extent {int dummy; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC1 (struct ext4_extent*) ; 
 int FUNC2 (struct ext4_extent*) ; 
 size_t FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,scalar_t__,struct ext4_ext_path**) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_ext_path*) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, ext4_lblk_t from, ext4_lblk_t count,
		    int unwritten, int *err)
{
	struct ext4_ext_path *path = NULL;
	struct ext4_extent *ext;
	int ret = 0;
	ext4_lblk_t last = from + count;
	while (from < last) {
		*err = FUNC4(inode, from, &path);
		if (*err)
			goto out;
		ext = path[FUNC3(inode)].p_ext;
		if (unwritten != FUNC2(ext))
			goto out;
		from += FUNC1(ext);
		FUNC0(path);
	}
	ret = 1;
out:
	FUNC0(path);
	FUNC5(path);
	return ret;
}