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
struct nilfs_cpstat {void* cs_nsss; void* cs_ncps; int /*<<< orphan*/  cs_cno; } ;
struct nilfs_cpfile_header {int /*<<< orphan*/  ch_nsnapshots; int /*<<< orphan*/  ch_ncheckpoints; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nilfs_cpfile_header* FUNC6 (struct inode*,struct buffer_head*,void*) ; 
 int FUNC7 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct inode *cpfile, struct nilfs_cpstat *cpstat)
{
	struct buffer_head *bh;
	struct nilfs_cpfile_header *header;
	void *kaddr;
	int ret;

	FUNC2(&FUNC0(cpfile)->mi_sem);

	ret = FUNC7(cpfile, &bh);
	if (ret < 0)
		goto out_sem;
	kaddr = FUNC3(bh->b_page);
	header = FUNC6(cpfile, bh, kaddr);
	cpstat->cs_cno = FUNC8(cpfile);
	cpstat->cs_ncps = FUNC5(header->ch_ncheckpoints);
	cpstat->cs_nsss = FUNC5(header->ch_nsnapshots);
	FUNC4(kaddr);
	FUNC1(bh);

 out_sem:
	FUNC9(&FUNC0(cpfile)->mi_sem);
	return ret;
}