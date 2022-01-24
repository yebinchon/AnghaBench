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
struct ext4_ext_path {int /*<<< orphan*/ * p_ext; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  EXT4_EX_NOCACHE ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC3 (struct inode*,int /*<<< orphan*/ ,struct ext4_ext_path**,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_ext_path*) ; 

__attribute__((used)) static inline int
FUNC6(struct inode *inode, ext4_lblk_t lblock,
		struct ext4_ext_path **ppath)
{
	struct ext4_ext_path *path;

	path = FUNC3(inode, lblock, ppath, EXT4_EX_NOCACHE);
	if (FUNC0(path))
		return FUNC1(path);
	if (path[FUNC4(inode)].p_ext == NULL) {
		FUNC2(path);
		FUNC5(path);
		*ppath = NULL;
		return -ENODATA;
	}
	*ppath = path;
	return 0;
}