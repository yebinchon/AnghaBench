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
struct page {int dummy; } ;
struct f2fs_inode {int /*<<< orphan*/ * i_nid; } ;
struct dnode_of_data {int node_changed; int /*<<< orphan*/  inode; void* nid; struct page* node_page; } ;
typedef  void* nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int NIDS_PER_BLOCK ; 
 int NODE_DIR1_BLOCK ; 
 int FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int,int) ; 
 void* FUNC6 (struct page*,int,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**,int,int) ; 
 int FUNC10 (struct dnode_of_data*) ; 
 int FUNC11 (struct dnode_of_data*) ; 

__attribute__((used)) static int FUNC12(struct dnode_of_data *dn,
			struct f2fs_inode *ri, int *offset, int depth)
{
	struct page *pages[2];
	nid_t nid[3];
	nid_t child_nid;
	int err = 0;
	int i;
	int idx = depth - 2;

	nid[0] = FUNC7(ri->i_nid[offset[0] - NODE_DIR1_BLOCK]);
	if (!nid[0])
		return 0;

	/* get indirect nodes in the path */
	for (i = 0; i < idx + 1; i++) {
		/* reference count'll be increased */
		pages[i] = FUNC3(FUNC0(dn->inode), nid[i]);
		if (FUNC1(pages[i])) {
			err = FUNC2(pages[i]);
			idx = i - 1;
			goto fail;
		}
		nid[i + 1] = FUNC6(pages[i], offset[i + 1], false);
	}

	FUNC5(pages[idx], offset[idx + 1], NIDS_PER_BLOCK);

	/* free direct nodes linked to a partial indirect node */
	for (i = offset[idx + 1]; i < NIDS_PER_BLOCK; i++) {
		child_nid = FUNC6(pages[idx], i, false);
		if (!child_nid)
			continue;
		dn->nid = child_nid;
		err = FUNC10(dn);
		if (err < 0)
			goto fail;
		if (FUNC8(pages[idx], i, 0, false))
			dn->node_changed = true;
	}

	if (offset[idx + 1] == 0) {
		dn->node_page = pages[idx];
		dn->nid = nid[idx];
		err = FUNC11(dn);
		if (err)
			goto fail;
	} else {
		FUNC4(pages[idx], 1);
	}
	offset[idx]++;
	offset[idx + 1] = 0;
	idx--;
fail:
	for (i = idx; i >= 0; i--)
		FUNC4(pages[i], 1);

	FUNC9(dn->inode, nid, depth, err);

	return err;
}