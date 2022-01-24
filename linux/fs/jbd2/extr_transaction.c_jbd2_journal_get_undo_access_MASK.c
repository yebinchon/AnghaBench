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
struct journal_head {char* b_committed_data; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  b_size; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int __GFP_NOFAIL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct journal_head*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct journal_head* FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct journal_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 TYPE_1__* FUNC9 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 

int FUNC12(handle_t *handle, struct buffer_head *bh)
{
	int err;
	struct journal_head *jh;
	char *committed_data = NULL;

	if (FUNC6(handle, bh, true))
		return 0;

	jh = FUNC4(bh);
	FUNC0(jh, "entry");

	/*
	 * Do this first --- it can drop the journal lock, so we want to
	 * make sure that obtaining the committed_data is done
	 * atomically wrt. completion of any outstanding commits.
	 */
	err = FUNC1(handle, jh, 1);
	if (err)
		goto out;

repeat:
	if (!jh->b_committed_data)
		committed_data = FUNC2(FUNC9(jh)->b_size,
					    GFP_NOFS|__GFP_NOFAIL);

	FUNC7(bh);
	if (!jh->b_committed_data) {
		/* Copy out the current buffer contents into the
		 * preserved, committed copy. */
		FUNC0(jh, "generate b_committed data");
		if (!committed_data) {
			FUNC8(bh);
			goto repeat;
		}

		jh->b_committed_data = committed_data;
		committed_data = NULL;
		FUNC10(jh->b_committed_data, bh->b_data, bh->b_size);
	}
	FUNC8(bh);
out:
	FUNC5(jh);
	if (FUNC11(committed_data))
		FUNC3(committed_data, bh->b_size);
	return err;
}