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
typedef  scalar_t__ time64_t ;
struct nilfs_segment_usage {int /*<<< orphan*/  su_nblocks; int /*<<< orphan*/  su_lastmod; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC11 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct inode *sufile, __u64 segnum,
				   unsigned long nblocks, time64_t modtime)
{
	struct buffer_head *bh;
	struct nilfs_segment_usage *su;
	void *kaddr;
	int ret;

	FUNC5(&FUNC0(sufile)->mi_sem);
	ret = FUNC12(sufile, segnum, 0, &bh);
	if (ret < 0)
		goto out_sem;

	kaddr = FUNC6(bh->b_page);
	su = FUNC11(sufile, segnum, bh, kaddr);
	FUNC1(FUNC10(su));
	if (modtime)
		su->su_lastmod = FUNC4(modtime);
	su->su_nblocks = FUNC3(nblocks);
	FUNC7(kaddr);

	FUNC8(bh);
	FUNC9(sufile);
	FUNC2(bh);

 out_sem:
	FUNC13(&FUNC0(sufile)->mi_sem);
	return ret;
}