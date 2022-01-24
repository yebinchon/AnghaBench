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
struct treepath {int path_length; } ;
struct super_block {int dummy; } ;
struct reiserfs_key {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*,int) ; 
 int FIRST_PATH_ELEMENT_OFFSET ; 
 struct reiserfs_key const MAX_KEY ; 
 struct reiserfs_key const MIN_KEY ; 
 struct buffer_head* FUNC3 (struct treepath const*,int) ; 
 int FUNC4 (struct treepath const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (struct super_block const*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct reiserfs_key const* FUNC8 (struct buffer_head*,int) ; 

inline const struct reiserfs_key *FUNC9(const struct treepath *chk_path,
					   const struct super_block *sb)
{
	int position, path_offset = chk_path->path_length;
	struct buffer_head *parent;

	FUNC5(path_offset < FIRST_PATH_ELEMENT_OFFSET,
	       "PAP-5030: invalid offset in the path");

	while (path_offset-- > FIRST_PATH_ELEMENT_OFFSET) {

		FUNC5(!FUNC7
		       (FUNC3(chk_path, path_offset)),
		       "PAP-5040: parent is not uptodate");

		/* Parent at the path is not in the tree now. */
		if (!FUNC0
		    (parent =
		     FUNC3(chk_path, path_offset)))
			return &MIN_KEY;
		/* Check whether position in the parent is correct. */
		if ((position =
		     FUNC4(chk_path,
					  path_offset)) >
		    FUNC1(parent))
			return &MIN_KEY;
		/*
		 * Check whether parent at the path really points
		 * to the child.
		 */
		if (FUNC2(parent, position) !=
		    FUNC3(chk_path,
					path_offset + 1)->b_blocknr)
			return &MIN_KEY;

		/*
		 * Return delimiting key if position in the parent
		 * is not the last one.
		 */
		if (position != FUNC1(parent))
			return FUNC8(parent, position);
	}

	/* Return MAX_KEY if we are in the root of the buffer tree. */
	if (FUNC3(chk_path, FIRST_PATH_ELEMENT_OFFSET)->
	    b_blocknr == FUNC6(sb))
		return &MAX_KEY;
	return &MIN_KEY;
}