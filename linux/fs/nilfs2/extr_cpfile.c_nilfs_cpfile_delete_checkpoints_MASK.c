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
typedef  int /*<<< orphan*/  u64 ;
struct nilfs_cpfile_header {int /*<<< orphan*/  ch_ncheckpoints; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_checkpoint*) ; 
 scalar_t__ FUNC9 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC10 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 struct nilfs_cpfile_header* FUNC11 (struct inode*,struct buffer_head*,void*) ; 
 int FUNC12 (struct inode*,struct buffer_head*,void*,int) ; 
 int FUNC13 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC14 (struct inode*,scalar_t__) ; 
 int FUNC15 (struct inode*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC16 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct inode *cpfile,
				    __u64 start,
				    __u64 end)
{
	struct buffer_head *header_bh, *cp_bh;
	struct nilfs_cpfile_header *header;
	struct nilfs_checkpoint *cp;
	size_t cpsz = FUNC0(cpfile)->mi_entry_size;
	__u64 cno;
	void *kaddr;
	unsigned long tnicps;
	int ret, ncps, nicps, nss, count, i;

	if (FUNC20(start == 0 || start > end)) {
		FUNC19(cpfile->i_sb, KERN_ERR,
			  "cannot delete checkpoints: invalid range [%llu, %llu)",
			  (unsigned long long)start, (unsigned long long)end);
		return -EINVAL;
	}

	FUNC2(&FUNC0(cpfile)->mi_sem);

	ret = FUNC16(cpfile, &header_bh);
	if (ret < 0)
		goto out_sem;
	tnicps = 0;
	nss = 0;

	for (cno = start; cno < end; cno += ncps) {
		ncps = FUNC13(cpfile, cno, end);
		ret = FUNC15(cpfile, cno, 0, &cp_bh);
		if (ret < 0) {
			if (ret != -ENOENT)
				break;
			/* skip hole */
			ret = 0;
			continue;
		}

		kaddr = FUNC3(cp_bh->b_page);
		cp = FUNC10(
			cpfile, cno, cp_bh, kaddr);
		nicps = 0;
		for (i = 0; i < ncps; i++, cp = (void *)cp + cpsz) {
			if (FUNC9(cp)) {
				nss++;
			} else if (!FUNC7(cp)) {
				FUNC8(cp);
				nicps++;
			}
		}
		if (nicps > 0) {
			tnicps += nicps;
			FUNC6(cp_bh);
			FUNC18(cpfile);
			if (!FUNC17(cpfile, cno)) {
				count =
				  FUNC12(
						cpfile, cp_bh, kaddr, nicps);
				if (count == 0) {
					/* make hole */
					FUNC4(kaddr);
					FUNC1(cp_bh);
					ret =
					  FUNC14(
								   cpfile, cno);
					if (ret == 0)
						continue;
					FUNC19(cpfile->i_sb, KERN_ERR,
						  "error %d deleting checkpoint block",
						  ret);
					break;
				}
			}
		}

		FUNC4(kaddr);
		FUNC1(cp_bh);
	}

	if (tnicps > 0) {
		kaddr = FUNC3(header_bh->b_page);
		header = FUNC11(cpfile, header_bh,
						       kaddr);
		FUNC5(&header->ch_ncheckpoints, -(u64)tnicps);
		FUNC6(header_bh);
		FUNC18(cpfile);
		FUNC4(kaddr);
	}

	FUNC1(header_bh);
	if (nss > 0)
		ret = -EBUSY;

 out_sem:
	FUNC21(&FUNC0(cpfile)->mi_sem);
	return ret;
}