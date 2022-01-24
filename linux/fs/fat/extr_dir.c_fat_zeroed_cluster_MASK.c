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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ sec_per_clus; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC8 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, sector_t blknr, int nr_used,
			      struct buffer_head **bhs, int nr_bhs)
{
	struct super_block *sb = dir->i_sb;
	sector_t last_blknr = blknr + FUNC1(sb)->sec_per_clus;
	int err, i, n;

	/* Zeroing the unused blocks on this cluster */
	blknr += nr_used;
	n = nr_used;
	while (blknr < last_blknr) {
		bhs[n] = FUNC8(sb, blknr);
		if (!bhs[n]) {
			err = -ENOMEM;
			goto error;
		}
		/* Avoid race with userspace read via bdev */
		FUNC5(bhs[n]);
		FUNC7(bhs[n]->b_data, 0, sb->s_blocksize);
		FUNC9(bhs[n]);
		FUNC10(bhs[n]);
		FUNC6(bhs[n], dir);

		n++;
		blknr++;
		if (n == nr_bhs) {
			if (FUNC0(dir)) {
				err = FUNC4(bhs, n);
				if (err)
					goto error;
			}
			for (i = 0; i < n; i++)
				FUNC3(bhs[i]);
			n = 0;
		}
	}
	if (FUNC0(dir)) {
		err = FUNC4(bhs, n);
		if (err)
			goto error;
	}
	for (i = 0; i < n; i++)
		FUNC3(bhs[i]);

	return 0;

error:
	for (i = 0; i < n; i++)
		FUNC2(bhs[i]);
	return err;
}