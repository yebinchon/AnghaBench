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
struct item_head {int /*<<< orphan*/  ih_key; } ;
struct buffer_info {struct buffer_head* bi_bh; } ;
struct buffer_head {int b_size; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int FIRST_TO_LAST ; 
 int LAST_TO_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int UNFM_P_SIZE ; 
 int FUNC2 (struct item_head*) ; 
 int FUNC3 (struct item_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*,struct item_head*) ; 
 int FUNC5 (struct item_head*) ; 
 scalar_t__ FUNC6 (struct item_head*) ; 
 scalar_t__ FUNC7 (struct item_head*) ; 
 scalar_t__ FUNC8 (struct item_head*) ; 
 struct item_head* FUNC9 (struct buffer_head*,int) ; 
 int FUNC10 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_info*,struct buffer_head*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_info*,int,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,struct item_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct item_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct buffer_info *dest_bi,
				   struct buffer_head *src, int last_first,
				   int bytes_or_entries)
{
	struct buffer_head *dest = dest_bi->bi_bh;
	/* number of items in the source and destination buffers */
	int dest_nr_item, src_nr_item;
	struct item_head *ih;
	struct item_head *dih;

	dest_nr_item = FUNC0(dest);

	/*
	 * if ( DEST is empty or first item of SOURCE and last item of
	 * DEST are the items of different objects or of different types )
	 * then there is no need to treat this item differently from the
	 * other items that we copy, so we return
	 */
	if (last_first == FIRST_TO_LAST) {
		ih = FUNC9(src, 0);
		dih = FUNC9(dest, dest_nr_item - 1);

		/* there is nothing to merge */
		if (!dest_nr_item
		    || (!FUNC15(&ih->ih_key, src->b_size)))
			return 0;

		FUNC1(!FUNC5(ih),
		       "vs-10010: item can not have empty length");

		if (FUNC7(ih)) {
			if (bytes_or_entries == -1)
				/* copy all entries to dest */
				bytes_or_entries = FUNC3(ih);
			FUNC12(dest_bi, src, FIRST_TO_LAST, 0, 0,
					      bytes_or_entries);
			return 1;
		}

		/*
		 * copy part of the body of the first item of SOURCE
		 * to the end of the body of the last item of the DEST
		 * part defined by 'bytes_or_entries'; if bytes_or_entries
		 * == -1 copy whole body; don't create new item header
		 */
		if (bytes_or_entries == -1)
			bytes_or_entries = FUNC5(ih);

#ifdef CONFIG_REISERFS_CHECK
		else {
			if (bytes_or_entries == ih_item_len(ih)
			    && is_indirect_le_ih(ih))
				if (get_ih_free_space(ih))
					reiserfs_panic(sb_from_bi(dest_bi),
						       "vs-10020",
						       "last unformatted node "
						       "must be filled "
						       "entirely (%h)", ih);
		}
#endif

		/*
		 * merge first item (or its part) of src buffer with the last
		 * item of dest buffer. Both are of the same file
		 */
		FUNC13(dest_bi,
				     dest_nr_item - 1, FUNC5(dih),
				     bytes_or_entries, FUNC4(src, ih), 0);

		if (FUNC8(dih)) {
			FUNC1(FUNC2(dih),
			       "vs-10030: merge to left: last unformatted node of non-last indirect item %h must have zerto free space",
			       ih);
			if (bytes_or_entries == FUNC5(ih))
				FUNC18(dih, FUNC2(ih));
		}

		return 1;
	}

	/* copy boundary item to right (last_first == LAST_TO_FIRST) */

	/*
	 * (DEST is empty or last item of SOURCE and first item of DEST
	 * are the items of different object or of different types)
	 */
	src_nr_item = FUNC0(src);
	ih = FUNC9(src, src_nr_item - 1);
	dih = FUNC9(dest, 0);

	if (!dest_nr_item || !FUNC15(&dih->ih_key, src->b_size))
		return 0;

	if (FUNC7(ih)) {
		/*
		 * bytes_or_entries = entries number in last
		 * item body of SOURCE
		 */
		if (bytes_or_entries == -1)
			bytes_or_entries = FUNC3(ih);

		FUNC12(dest_bi, src, LAST_TO_FIRST,
				      src_nr_item - 1,
				      FUNC3(ih) - bytes_or_entries,
				      bytes_or_entries);
		return 1;
	}

	/*
	 * copy part of the body of the last item of SOURCE to the
	 * begin of the body of the first item of the DEST; part defined
	 * by 'bytes_or_entries'; if byte_or_entriess == -1 copy whole body;
	 * change first item key of the DEST; don't create new item header
	 */

	FUNC1(FUNC8(ih) && FUNC2(ih),
	       "vs-10040: merge to right: last unformatted node of non-last indirect item must be filled entirely (%h)",
	       ih);

	if (bytes_or_entries == -1) {
		/* bytes_or_entries = length of last item body of SOURCE */
		bytes_or_entries = FUNC5(ih);

		FUNC1(FUNC10(dih) !=
		       FUNC10(ih) + FUNC14(ih, src->b_size),
		       "vs-10050: items %h and %h do not match", ih, dih);

		/* change first item key of the DEST */
		FUNC19(dih, FUNC10(ih));

		/* item becomes non-mergeable */
		/* or mergeable if left item was */
		FUNC20(dih, FUNC11(ih));
	} else {
		/* merge to right only part of item */
		FUNC1(FUNC5(ih) <= bytes_or_entries,
		       "vs-10060: no so much bytes %lu (needed %lu)",
		       (unsigned long)FUNC5(ih),
		       (unsigned long)bytes_or_entries);

		/* change first item key of the DEST */
		if (FUNC6(dih)) {
			FUNC1(FUNC10(dih) <=
			       (unsigned long)bytes_or_entries,
			       "vs-10070: dih %h, bytes_or_entries(%d)", dih,
			       bytes_or_entries);
			FUNC19(dih,
					   FUNC10(dih) -
					   bytes_or_entries);
		} else {
			FUNC1(FUNC10(dih) <=
			       (bytes_or_entries / UNFM_P_SIZE) * dest->b_size,
			       "vs-10080: dih %h, bytes_or_entries(%d)",
			       dih,
			       (bytes_or_entries / UNFM_P_SIZE) * dest->b_size);
			FUNC19(dih,
					   FUNC10(dih) -
					   ((bytes_or_entries / UNFM_P_SIZE) *
					    dest->b_size));
		}
	}

	FUNC13(dest_bi, 0, 0, bytes_or_entries,
			     FUNC4(src,
				       ih) + FUNC5(ih) - bytes_or_entries,
			     0);
	return 1;
}