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
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; } ;
struct ext4_ext_path {struct ext4_extent_header* p_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext4_extent*,struct ext4_extent*) ; 
 scalar_t__ FUNC6 (struct ext4_extent*) ; 
 int FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*) ; 
 unsigned int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,struct ext4_extent*,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				 struct ext4_ext_path *path,
				 struct ext4_extent *ex)
{
	struct ext4_extent_header *eh;
	unsigned int depth, len;
	int merge_done = 0, unwritten;

	depth = FUNC9(inode);
	FUNC0(path[depth].p_hdr == NULL);
	eh = path[depth].p_hdr;

	while (ex < FUNC2(eh)) {
		if (!FUNC5(inode, ex, ex + 1))
			break;
		/* merge with next extent! */
		unwritten = FUNC7(ex);
		ex->ee_len = FUNC4(FUNC6(ex)
				+ FUNC6(ex + 1));
		if (unwritten)
			FUNC8(ex);

		if (ex + 1 < FUNC2(eh)) {
			len = (FUNC2(eh) - ex - 1)
				* sizeof(struct ext4_extent);
			FUNC11(ex + 1, ex + 2, len);
		}
		FUNC10(&eh->eh_entries, -1);
		merge_done = 1;
		FUNC3(eh->eh_entries == 0);
		if (!eh->eh_entries)
			FUNC1(inode, "eh->eh_entries = 0!");
	}

	return merge_done;
}