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
struct node_info {int /*<<< orphan*/  version; } ;
struct inode {size_t i_size; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {size_t ofs_in_node; int /*<<< orphan*/  data_blkaddr; int /*<<< orphan*/  node_page; int /*<<< orphan*/  inode; int /*<<< orphan*/  nid; } ;
typedef  size_t pgoff_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  ALLOC_NODE ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ NULL_ADDR ; 
 size_t PAGE_SHIFT ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct page*) ; 
 int FUNC6 (struct dnode_of_data*,size_t,int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (struct inode*,size_t,int) ; 
 struct page* FUNC8 (struct inode*,int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,struct dnode_of_data*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dnode_of_data*,int) ; 
 int FUNC16 (struct inode*,size_t,size_t) ; 
 size_t FUNC17 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 

__attribute__((used)) static int FUNC20(struct inode *src_inode, struct inode *dst_inode,
			block_t *blkaddr, int *do_replace,
			pgoff_t src, pgoff_t dst, pgoff_t len, bool full)
{
	struct f2fs_sb_info *sbi = FUNC1(src_inode);
	pgoff_t i = 0;
	int ret;

	while (i < len) {
		if (blkaddr[i] == NULL_ADDR && !full) {
			i++;
			continue;
		}

		if (do_replace[i] || blkaddr[i] == NULL_ADDR) {
			struct dnode_of_data dn;
			struct node_info ni;
			size_t new_size;
			pgoff_t ilen;

			FUNC18(&dn, dst_inode, NULL, NULL, 0);
			ret = FUNC6(&dn, dst + i, ALLOC_NODE);
			if (ret)
				return ret;

			ret = FUNC9(sbi, dn.nid, &ni);
			if (ret) {
				FUNC12(&dn);
				return ret;
			}

			ilen = FUNC17((pgoff_t)
				FUNC0(dn.node_page, dst_inode) -
						dn.ofs_in_node, len - i);
			do {
				dn.data_blkaddr = FUNC4(dn.inode,
						dn.node_page, dn.ofs_in_node);
				FUNC15(&dn, 1);

				if (do_replace[i]) {
					FUNC10(src_inode,
							1, false, false);
					FUNC10(dst_inode,
							1, true, false);
					FUNC14(sbi, &dn, dn.data_blkaddr,
					blkaddr[i], ni.version, true, false);

					do_replace[i] = 0;
				}
				dn.ofs_in_node++;
				i++;
				new_size = (dst + i) << PAGE_SHIFT;
				if (dst_inode->i_size < new_size)
					FUNC11(dst_inode, new_size);
			} while (--ilen && (do_replace[i] || blkaddr[i] == NULL_ADDR));

			FUNC12(&dn);
		} else {
			struct page *psrc, *pdst;

			psrc = FUNC7(src_inode,
							src + i, true);
			if (FUNC2(psrc))
				return FUNC3(psrc);
			pdst = FUNC8(dst_inode, NULL, dst + i,
								true);
			if (FUNC2(pdst)) {
				FUNC13(psrc, 1);
				return FUNC3(pdst);
			}
			FUNC5(psrc, pdst);
			FUNC19(pdst);
			FUNC13(pdst, 1);
			FUNC13(psrc, 1);

			ret = FUNC16(src_inode,
						src + i, src + i + 1);
			if (ret)
				return ret;
			i++;
		}
	}
	return 0;
}