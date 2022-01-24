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
typedef  int pgoff_t ;
typedef  int block_t ;

/* Variables and functions */
 int FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct inode*,struct inode*,int*,int*,int,int,int,int) ; 
 int FUNC3 (struct inode*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct inode *src_inode,
			struct inode *dst_inode, pgoff_t src, pgoff_t dst,
			pgoff_t len, bool full)
{
	block_t *src_blkaddr;
	int *do_replace;
	pgoff_t olen;
	int ret;

	while (len) {
		olen = FUNC8((pgoff_t)4 * FUNC0(src_inode), len);

		src_blkaddr = FUNC6(FUNC1(src_inode),
					FUNC5(olen, sizeof(block_t)),
					GFP_KERNEL);
		if (!src_blkaddr)
			return -ENOMEM;

		do_replace = FUNC6(FUNC1(src_inode),
					FUNC5(olen, sizeof(int)),
					GFP_KERNEL);
		if (!do_replace) {
			FUNC7(src_blkaddr);
			return -ENOMEM;
		}

		ret = FUNC3(src_inode, src_blkaddr,
					do_replace, src, olen);
		if (ret)
			goto roll_back;

		ret = FUNC2(src_inode, dst_inode, src_blkaddr,
					do_replace, src, dst, olen, full);
		if (ret)
			goto roll_back;

		src += olen;
		dst += olen;
		len -= olen;

		FUNC7(src_blkaddr);
		FUNC7(do_replace);
	}
	return 0;

roll_back:
	FUNC4(src_inode, src_blkaddr, do_replace, src, olen);
	FUNC7(src_blkaddr);
	FUNC7(do_replace);
	return ret;
}