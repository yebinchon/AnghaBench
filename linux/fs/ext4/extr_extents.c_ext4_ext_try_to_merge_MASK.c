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
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {int dummy; } ;
struct ext4_ext_path {struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 int FUNC2 (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC4 (struct inode*) ; 

__attribute__((used)) static void FUNC5(handle_t *handle,
				  struct inode *inode,
				  struct ext4_ext_path *path,
				  struct ext4_extent *ex) {
	struct ext4_extent_header *eh;
	unsigned int depth;
	int merge_done = 0;

	depth = FUNC4(inode);
	FUNC0(path[depth].p_hdr == NULL);
	eh = path[depth].p_hdr;

	if (ex > FUNC1(eh))
		merge_done = FUNC2(inode, path, ex - 1);

	if (!merge_done)
		(void) FUNC2(inode, path, ex);

	FUNC3(handle, inode, path);
}