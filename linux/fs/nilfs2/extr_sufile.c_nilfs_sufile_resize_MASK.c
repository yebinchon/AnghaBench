#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int dummy; } ;
struct nilfs_sufile_info {unsigned long ncleansegs; } ;
struct nilfs_sufile_header {int /*<<< orphan*/  sh_ncleansegs; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  unsigned long __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  mi_sem; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct nilfs_sufile_info* FUNC1 (struct inode*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 unsigned long FUNC10 (struct the_nilfs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct the_nilfs*,unsigned long) ; 
 int FUNC12 (struct inode*,struct buffer_head**) ; 
 unsigned long FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct inode *sufile, __u64 newnsegs)
{
	struct the_nilfs *nilfs = sufile->i_sb->s_fs_info;
	struct buffer_head *header_bh;
	struct nilfs_sufile_header *header;
	struct nilfs_sufile_info *sui = FUNC1(sufile);
	void *kaddr;
	unsigned long nsegs, nrsvsegs;
	int ret = 0;

	FUNC5(&FUNC0(sufile)->mi_sem);

	nsegs = FUNC13(sufile);
	if (nsegs == newnsegs)
		goto out;

	ret = -ENOSPC;
	nrsvsegs = FUNC10(nilfs, newnsegs);
	if (newnsegs < nsegs && nsegs - newnsegs + nrsvsegs > sui->ncleansegs)
		goto out;

	ret = FUNC12(sufile, &header_bh);
	if (ret < 0)
		goto out;

	if (newnsegs > nsegs) {
		sui->ncleansegs += newnsegs - nsegs;
	} else /* newnsegs < nsegs */ {
		ret = FUNC14(sufile, newnsegs, nsegs - 1);
		if (ret < 0)
			goto out_header;

		sui->ncleansegs -= nsegs - newnsegs;
	}

	kaddr = FUNC6(header_bh->b_page);
	header = kaddr + FUNC2(header_bh);
	header->sh_ncleansegs = FUNC4(sui->ncleansegs);
	FUNC7(kaddr);

	FUNC8(header_bh);
	FUNC9(sufile);
	FUNC11(nilfs, newnsegs);

out_header:
	FUNC3(header_bh);
out:
	FUNC15(&FUNC0(sufile)->mi_sem);
	return ret;
}