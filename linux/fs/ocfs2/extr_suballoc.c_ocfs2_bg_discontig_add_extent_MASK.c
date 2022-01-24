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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; struct ocfs2_extent_rec* l_recs; void* l_count; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_bits; struct ocfs2_extent_list bg_list; } ;
struct ocfs2_extent_rec {void* e_leaf_clusters; int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_blkno; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_bpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*) ; 

__attribute__((used)) static void FUNC8(struct ocfs2_super *osb,
					  struct ocfs2_group_desc *bg,
					  struct ocfs2_chain_list *cl,
					  u64 p_blkno, unsigned int clusters)
{
	struct ocfs2_extent_list *el = &bg->bg_list;
	struct ocfs2_extent_rec *rec;

	FUNC0(!FUNC7(osb));
	if (!el->l_next_free_rec)
		el->l_count = FUNC1(FUNC6(osb->sb));
	rec = &el->l_recs[FUNC5(el->l_next_free_rec)];
	rec->e_blkno = FUNC3(p_blkno);
	rec->e_cpos = FUNC2(FUNC5(bg->bg_bits) /
				  FUNC5(cl->cl_bpc));
	rec->e_leaf_clusters = FUNC1(clusters);
	FUNC4(&bg->bg_bits, clusters * FUNC5(cl->cl_bpc));
	FUNC4(&bg->bg_free_bits_count,
		     clusters * FUNC5(cl->cl_bpc));
	FUNC4(&el->l_next_free_rec, 1);
}