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
struct the_nilfs {int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_prot_seq; int /*<<< orphan*/  ns_nongc_ctime; int /*<<< orphan*/  ns_ctime; } ;
struct nilfs_sustat {int /*<<< orphan*/  ss_prot_seq; int /*<<< orphan*/  ss_nongc_ctime; int /*<<< orphan*/  ss_ctime; void* ss_ndirtysegs; void* ss_ncleansegs; int /*<<< orphan*/  ss_nsegs; } ;
struct nilfs_sufile_header {int /*<<< orphan*/  sh_ndirtysegs; int /*<<< orphan*/  sh_ncleansegs; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  mi_sem; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *sufile, struct nilfs_sustat *sustat)
{
	struct buffer_head *header_bh;
	struct nilfs_sufile_header *header;
	struct the_nilfs *nilfs = sufile->i_sb->s_fs_info;
	void *kaddr;
	int ret;

	FUNC3(&FUNC0(sufile)->mi_sem);

	ret = FUNC7(sufile, &header_bh);
	if (ret < 0)
		goto out_sem;

	kaddr = FUNC4(header_bh->b_page);
	header = kaddr + FUNC1(header_bh);
	sustat->ss_nsegs = FUNC8(sufile);
	sustat->ss_ncleansegs = FUNC6(header->sh_ncleansegs);
	sustat->ss_ndirtysegs = FUNC6(header->sh_ndirtysegs);
	sustat->ss_ctime = nilfs->ns_ctime;
	sustat->ss_nongc_ctime = nilfs->ns_nongc_ctime;
	FUNC9(&nilfs->ns_last_segment_lock);
	sustat->ss_prot_seq = nilfs->ns_prot_seq;
	FUNC10(&nilfs->ns_last_segment_lock);
	FUNC5(kaddr);
	FUNC2(header_bh);

 out_sem:
	FUNC11(&FUNC0(sufile)->mi_sem);
	return ret;
}