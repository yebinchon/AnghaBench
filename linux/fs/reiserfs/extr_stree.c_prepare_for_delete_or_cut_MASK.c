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
struct treepath {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  pos_in_item ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IH_SIZE ; 
 int FUNC1 (struct item_head*) ; 
 scalar_t__ JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD ; 
 int M_CONVERT ; 
 int M_CUT ; 
 char M_DELETE ; 
 struct buffer_head* FUNC2 (struct treepath*) ; 
 scalar_t__ POSITION_FOUND ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int UNFM_P_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct item_head*,struct item_head*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct buffer_head*,struct item_head*) ; 
 int FUNC7 (struct item_head*) ; 
 scalar_t__ FUNC8 (struct item_head*) ; 
 scalar_t__ FUNC9 (struct item_head*) ; 
 scalar_t__ FUNC10 (struct item_head*) ; 
 scalar_t__ FUNC11 (struct item_head*,struct treepath*) ; 
 int /*<<< orphan*/  FUNC12 (struct reiserfs_transaction_handle*,struct buffer_head*) ; 
 int FUNC13 (struct item_head*) ; 
 unsigned long long FUNC14 (struct inode*) ; 
 char FUNC15 (struct treepath*,struct item_head*,struct inode*,unsigned long long,int*) ; 
 char FUNC16 (struct treepath*,struct item_head*,struct inode*,unsigned long long,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (struct reiserfs_transaction_handle*,struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,struct buffer_head*) ; 
 scalar_t__ FUNC22 (struct reiserfs_transaction_handle*) ; 
 scalar_t__ FUNC23 (struct super_block*,struct cpu_key const*,struct treepath*) ; 
 struct item_head* FUNC24 (struct treepath*) ; 

__attribute__((used)) static char FUNC25(struct reiserfs_transaction_handle *th,
				      struct inode *inode,
				      struct treepath *path,
				      const struct cpu_key *item_key,
				      /*
				       * Number of unformatted nodes
				       * which were removed from end
				       * of the file.
				       */
				      int *removed,
				      int *cut_size,
				      /* MAX_KEY_OFFSET in case of delete. */
				      unsigned long long new_file_length
    )
{
	struct super_block *sb = inode->i_sb;
	struct item_head *p_le_ih = FUNC24(path);
	struct buffer_head *bh = FUNC2(path);

	FUNC0(!th->t_trans_id);

	/* Stat_data item. */
	if (FUNC10(p_le_ih)) {

		FUNC3(new_file_length != FUNC14(inode),
		       "PAP-5210: mode must be M_DELETE");

		*cut_size = -(IH_SIZE + FUNC7(p_le_ih));
		return M_DELETE;
	}

	/* Directory item. */
	if (FUNC9(p_le_ih))
		return FUNC16(path, p_le_ih, inode,
						 new_file_length,
						 cut_size);

	/* Direct item. */
	if (FUNC8(p_le_ih))
		return FUNC15(path, p_le_ih, inode,
					       new_file_length, cut_size);

	/* Case of an indirect item. */
	{
	    int blk_size = sb->s_blocksize;
	    struct item_head s_ih;
	    int need_re_search;
	    int delete = 0;
	    int result = M_CUT;
	    int pos = 0;

	    if ( new_file_length == FUNC14 (inode) ) {
		/*
		 * prepare_for_delete_or_cut() is called by
		 * reiserfs_delete_item()
		 */
		new_file_length = 0;
		delete = 1;
	    }

	    do {
		need_re_search = 0;
		*cut_size = 0;
		bh = FUNC2(path);
		FUNC4(&s_ih, FUNC24(path));
		pos = FUNC1(&s_ih);

		while (FUNC13 (&s_ih) + (pos - 1) * blk_size > new_file_length) {
		    __le32 *unfm;
		    __u32 block;

		    /*
		     * Each unformatted block deletion may involve
		     * one additional bitmap block into the transaction,
		     * thereby the initial journal space reservation
		     * might not be enough.
		     */
		    if (!delete && (*cut_size) != 0 &&
			FUNC22(th) < JOURNAL_FOR_FREE_BLOCK_AND_UPDATE_SD)
			break;

		    unfm = (__le32 *)FUNC6(bh, &s_ih) + pos - 1;
		    block = FUNC5(unfm, 0);

		    if (block != 0) {
			FUNC20(sb, bh, 1);
			FUNC17(unfm, 0, 0);
			FUNC12(th, bh);
			FUNC19(th, inode, block, 1);
		    }

		    FUNC18(sb);

		    if (FUNC11 (&s_ih, path))  {
			need_re_search = 1;
			break;
		    }

		    pos --;
		    (*removed)++;
		    (*cut_size) -= UNFM_P_SIZE;

		    if (pos == 0) {
			(*cut_size) -= IH_SIZE;
			result = M_DELETE;
			break;
		    }
		}
		/*
		 * a trick.  If the buffer has been logged, this will
		 * do nothing.  If we've broken the loop without logging
		 * it, it will restore the buffer
		 */
		FUNC21(sb, bh);
	    } while (need_re_search &&
		     FUNC23(sb, item_key, path) == POSITION_FOUND);
	    pos_in_item(path) = pos * UNFM_P_SIZE;

	    if (*cut_size == 0) {
		/*
		 * Nothing was cut. maybe convert last unformatted node to the
		 * direct item?
		 */
		result = M_CONVERT;
	    }
	    return result;
	}
}