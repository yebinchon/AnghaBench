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
struct nilfs_cpfile_header {int /*<<< orphan*/  ch_ncheckpoints; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_checkpoint*) ; 
 scalar_t__ FUNC10 (struct nilfs_checkpoint*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct buffer_head*,void*,int) ; 
 struct nilfs_checkpoint* FUNC12 (struct inode*,int,struct buffer_head*,void*) ; 
 struct nilfs_cpfile_header* FUNC13 (struct inode*,struct buffer_head*,void*) ; 
 int FUNC14 (struct inode*,int,int,struct buffer_head**) ; 
 int FUNC15 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct inode *cpfile,
				__u64 cno,
				int create,
				struct nilfs_checkpoint **cpp,
				struct buffer_head **bhp)
{
	struct buffer_head *header_bh, *cp_bh;
	struct nilfs_cpfile_header *header;
	struct nilfs_checkpoint *cp;
	void *kaddr;
	int ret;

	if (FUNC19(cno < 1 || cno > FUNC17(cpfile) ||
		     (cno < FUNC17(cpfile) && create)))
		return -EINVAL;

	FUNC2(&FUNC0(cpfile)->mi_sem);

	ret = FUNC15(cpfile, &header_bh);
	if (ret < 0)
		goto out_sem;
	ret = FUNC14(cpfile, cno, create, &cp_bh);
	if (ret < 0)
		goto out_header;
	kaddr = FUNC3(cp_bh->b_page);
	cp = FUNC12(cpfile, cno, cp_bh, kaddr);
	if (FUNC10(cp)) {
		if (!create) {
			FUNC5(cp_bh->b_page);
			FUNC1(cp_bh);
			ret = -ENOENT;
			goto out_header;
		}
		/* a newly-created checkpoint */
		FUNC9(cp);
		if (!FUNC16(cpfile, cno))
			FUNC11(cpfile, cp_bh,
								 kaddr, 1);
		FUNC8(cp_bh);

		kaddr = FUNC4(header_bh->b_page);
		header = FUNC13(cpfile, header_bh,
						       kaddr);
		FUNC7(&header->ch_ncheckpoints, 1);
		FUNC6(kaddr);
		FUNC8(header_bh);
		FUNC18(cpfile);
	}

	if (cpp != NULL)
		*cpp = cp;
	*bhp = cp_bh;

 out_header:
	FUNC1(header_bh);

 out_sem:
	FUNC20(&FUNC0(cpfile)->mi_sem);
	return ret;
}