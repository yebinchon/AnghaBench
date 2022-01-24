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
typedef  int /*<<< orphan*/  vm_fault_t ;
typedef  int /*<<< orphan*/  u64 ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; unsigned long index; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_flags; TYPE_2__* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  gl_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GIF_SW_PAGED ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned int RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 int FUNC12 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC13 (struct gfs2_inode*) ; 
 scalar_t__ FUNC14 (struct gfs2_inode*) ; 
 int FUNC15 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*) ; 
 scalar_t__ FUNC17 (struct gfs2_inode*,unsigned int) ; 
 int FUNC18 (struct gfs2_sbd*) ; 
 int FUNC19 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct gfs2_sbd*) ; 
 int FUNC23 (struct gfs2_inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct gfs2_inode*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC35(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC4(vmf->vma->vm_file);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_alloc_parms ap = { .aflags = 0, };
	unsigned long last_index;
	u64 pos = FUNC28(page);
	unsigned int data_blocks, ind_blocks, rblocks;
	struct gfs2_holder gh;
	loff_t size;
	int ret;

	FUNC30(inode->i_sb);

	ret = FUNC19(ip);
	if (ret)
		goto out;

	FUNC20(vmf->vma->vm_file, pos, PAGE_SIZE);

	FUNC9(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
	ret = FUNC8(&gh);
	if (ret)
		goto out_uninit;

	/* Update file times before taking page lock */
	FUNC5(vmf->vma->vm_file);

	FUNC31(GLF_DIRTY, &ip->i_gl->gl_flags);
	FUNC31(GIF_SW_PAGED, &ip->i_flags);

	if (!FUNC24(ip, pos, PAGE_SIZE)) {
		FUNC27(page);
		if (!FUNC2(page) || page->mapping != inode->i_mapping) {
			ret = -EAGAIN;
			FUNC33(page);
		}
		goto out_unlock;
	}

	ret = FUNC18(sdp);
	if (ret)
		goto out_unlock;

	FUNC25(ip, PAGE_SIZE, &data_blocks, &ind_blocks);
	ap.target = data_blocks + ind_blocks;
	ret = FUNC15(ip, &ap);
	if (ret)
		goto out_unlock;
	ret = FUNC12(ip, &ap);
	if (ret)
		goto out_quota_unlock;

	rblocks = RES_DINODE + ind_blocks;
	if (FUNC13(ip))
		rblocks += data_blocks ? data_blocks : 1;
	if (ind_blocks || data_blocks) {
		rblocks += RES_STATFS + RES_QUOTA;
		rblocks += FUNC17(ip, data_blocks + ind_blocks);
	}
	ret = FUNC21(sdp, rblocks, 0);
	if (ret)
		goto out_trans_fail;

	FUNC27(page);
	ret = -EINVAL;
	size = FUNC26(inode);
	last_index = (size - 1) >> PAGE_SHIFT;
	/* Check page index against inode size */
	if (size == 0 || (page->index > last_index))
		goto out_trans_end;

	ret = -EAGAIN;
	/* If truncated, we must retry the operation, we may have raced
	 * with the glock demotion code.
	 */
	if (!FUNC2(page) || page->mapping != inode->i_mapping)
		goto out_trans_end;

	/* Unstuff, if required, and allocate backing blocks for page */
	ret = 0;
	if (FUNC14(ip))
		ret = FUNC23(ip, page);
	if (ret == 0)
		ret = FUNC6(page);

out_trans_end:
	if (ret)
		FUNC33(page);
	FUNC22(sdp);
out_trans_fail:
	FUNC11(ip);
out_quota_unlock:
	FUNC16(ip);
out_unlock:
	FUNC7(&gh);
out_uninit:
	FUNC10(&gh);
	if (ret == 0) {
		FUNC32(page);
		FUNC34(page);
	}
out:
	FUNC29(inode->i_sb);
	return FUNC3(ret);
}