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
struct ocfs2_quota_chunk {int qc_num; int /*<<< orphan*/  qc_chunk; int /*<<< orphan*/ * qc_headerbh; } ;
struct ocfs2_local_disk_dqinfo {int /*<<< orphan*/  dqi_chunks; } ;
struct list_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 struct ocfs2_quota_chunk* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ocfs2_quota_chunk*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ocfs2_qf_chunk_cachep ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
			struct ocfs2_local_disk_dqinfo *ldinfo,
			struct list_head *head)
{
	struct ocfs2_quota_chunk *newchunk;
	int i, status;

	FUNC0(head);
	for (i = 0; i < FUNC3(ldinfo->dqi_chunks); i++) {
		newchunk = FUNC1(ocfs2_qf_chunk_cachep, GFP_NOFS);
		if (!newchunk) {
			FUNC7(head);
			return -ENOMEM;
		}
		newchunk->qc_num = i;
		newchunk->qc_headerbh = NULL;
		status = FUNC6(inode,
				FUNC8(inode->i_sb, i),
				&newchunk->qc_headerbh);
		if (status) {
			FUNC5(status);
			FUNC2(ocfs2_qf_chunk_cachep, newchunk);
			FUNC7(head);
			return status;
		}
		FUNC4(&newchunk->qc_chunk, head);
	}
	return 0;
}