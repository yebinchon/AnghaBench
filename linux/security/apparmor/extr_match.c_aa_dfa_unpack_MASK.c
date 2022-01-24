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
struct table_set_header {int dummy; } ;
struct table_header {int td_id; int td_flags; int /*<<< orphan*/  td_lolen; } ;
struct aa_dfa {scalar_t__ flags; struct table_header** tables; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int DFA_FLAG_VERIFY_STATES ; 
 int ENOMEM ; 
 int EPROTO ; 
 struct aa_dfa* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int YYTD_DATA16 ; 
 int YYTD_DATA32 ; 
 int YYTD_DATA8 ; 
#define  YYTD_ID_ACCEPT 134 
#define  YYTD_ID_ACCEPT2 133 
#define  YYTD_ID_BASE 132 
#define  YYTD_ID_CHK 131 
#define  YYTD_ID_DEF 130 
#define  YYTD_ID_EC 129 
#define  YYTD_ID_NXT 128 
 scalar_t__ YYTH_FLAG_DIFF_ENCODE ; 
 int YYTH_MAGIC ; 
 int /*<<< orphan*/  FUNC3 (struct aa_dfa*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct table_header*) ; 
 struct aa_dfa* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct table_header* FUNC10 (char*,size_t) ; 
 int FUNC11 (struct aa_dfa*) ; 
 int FUNC12 (struct table_header**,int) ; 

struct aa_dfa *FUNC13(void *blob, size_t size, int flags)
{
	int hsize;
	int error = -ENOMEM;
	char *data = blob;
	struct table_header *table = NULL;
	struct aa_dfa *dfa = FUNC6(sizeof(struct aa_dfa), GFP_KERNEL);
	if (!dfa)
		goto fail;

	FUNC4(&dfa->count);

	error = -EPROTO;

	/* get dfa table set header */
	if (size < sizeof(struct table_set_header))
		goto fail;

	if (FUNC7(*(__be32 *) data) != YYTH_MAGIC)
		goto fail;

	hsize = FUNC7(*(__be32 *) (data + 4));
	if (size < hsize)
		goto fail;

	dfa->flags = FUNC8(*(__be16 *) (data + 12));
	if (dfa->flags != 0 && dfa->flags != YYTH_FLAG_DIFF_ENCODE)
		goto fail;

	data += hsize;
	size -= hsize;

	while (size > 0) {
		table = FUNC10(data, size);
		if (!table)
			goto fail;

		switch (table->td_id) {
		case YYTD_ID_ACCEPT:
			if (!(table->td_flags & FUNC0(flags)))
				goto fail;
			break;
		case YYTD_ID_ACCEPT2:
			if (!(table->td_flags & FUNC1(flags)))
				goto fail;
			break;
		case YYTD_ID_BASE:
			if (table->td_flags != YYTD_DATA32)
				goto fail;
			break;
		case YYTD_ID_DEF:
		case YYTD_ID_NXT:
		case YYTD_ID_CHK:
			if (table->td_flags != YYTD_DATA16)
				goto fail;
			break;
		case YYTD_ID_EC:
			if (table->td_flags != YYTD_DATA8)
				goto fail;
			break;
		default:
			goto fail;
		}
		/* check for duplicate table entry */
		if (dfa->tables[table->td_id])
			goto fail;
		dfa->tables[table->td_id] = table;
		data += FUNC9(table->td_lolen, table->td_flags);
		size -= FUNC9(table->td_lolen, table->td_flags);
		table = NULL;
	}
	error = FUNC12(dfa->tables, flags);
	if (error)
		goto fail;

	if (flags & DFA_FLAG_VERIFY_STATES) {
		error = FUNC11(dfa);
		if (error)
			goto fail;
	}

	return dfa;

fail:
	FUNC5(table);
	FUNC3(dfa);
	return FUNC2(error);
}