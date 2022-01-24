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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * nid; } ;
struct f2fs_node {TYPE_1__ in; } ;
struct dnode_of_data {scalar_t__ nid; int node_changed; int /*<<< orphan*/  inode; struct page* node_page; int /*<<< orphan*/  data_blkaddr; } ;
typedef  scalar_t__ nid_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct f2fs_node* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int NIDS_PER_BLOCK ; 
 int FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct page*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct dnode_of_data*) ; 
 int FUNC12 (struct dnode_of_data*) ; 

__attribute__((used)) static int FUNC13(struct dnode_of_data *dn, unsigned int nofs,
						int ofs, int depth)
{
	struct dnode_of_data rdn = *dn;
	struct page *page;
	struct f2fs_node *rn;
	nid_t child_nid;
	unsigned int child_nofs;
	int freed = 0;
	int i, ret;

	if (dn->nid == 0)
		return NIDS_PER_BLOCK + 1;

	FUNC9(dn->inode, dn->nid, dn->data_blkaddr);

	page = FUNC4(FUNC0(dn->inode), dn->nid);
	if (FUNC2(page)) {
		FUNC10(dn->inode, FUNC3(page));
		return FUNC3(page);
	}

	FUNC6(page, ofs, NIDS_PER_BLOCK);

	rn = FUNC1(page);
	if (depth < 3) {
		for (i = ofs; i < NIDS_PER_BLOCK; i++, freed++) {
			child_nid = FUNC7(rn->in.nid[i]);
			if (child_nid == 0)
				continue;
			rdn.nid = child_nid;
			ret = FUNC11(&rdn);
			if (ret < 0)
				goto out_err;
			if (FUNC8(page, i, 0, false))
				dn->node_changed = true;
		}
	} else {
		child_nofs = nofs + ofs * (NIDS_PER_BLOCK + 1) + 1;
		for (i = ofs; i < NIDS_PER_BLOCK; i++) {
			child_nid = FUNC7(rn->in.nid[i]);
			if (child_nid == 0) {
				child_nofs += NIDS_PER_BLOCK + 1;
				continue;
			}
			rdn.nid = child_nid;
			ret = FUNC13(&rdn, child_nofs, 0, depth - 1);
			if (ret == (NIDS_PER_BLOCK + 1)) {
				if (FUNC8(page, i, 0, false))
					dn->node_changed = true;
				child_nofs += ret;
			} else if (ret < 0 && ret != -ENOENT) {
				goto out_err;
			}
		}
		freed = child_nofs;
	}

	if (!ofs) {
		/* remove current indirect node */
		dn->node_page = page;
		ret = FUNC12(dn);
		if (ret)
			goto out_err;
		freed++;
	} else {
		FUNC5(page, 1);
	}
	FUNC10(dn->inode, freed);
	return freed;

out_err:
	FUNC5(page, 1);
	FUNC10(dn->inode, ret);
	return ret;
}