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
struct pstore_record {scalar_t__ size; struct pstore_record* buf; } ;
struct pstore_info {scalar_t__ (* read ) (struct pstore_record*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  read_mutex; int /*<<< orphan*/  (* close ) (struct pstore_info*) ;scalar_t__ (* open ) (struct pstore_info*) ;} ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pstore_record*) ; 
 int /*<<< orphan*/  FUNC1 (struct pstore_record*) ; 
 struct pstore_record* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dentry*,struct pstore_record*) ; 
 int /*<<< orphan*/  FUNC8 (struct pstore_record*,struct pstore_info*) ; 
 scalar_t__ FUNC9 (struct pstore_info*) ; 
 scalar_t__ FUNC10 (struct pstore_record*) ; 
 int /*<<< orphan*/  FUNC11 (struct pstore_info*) ; 

void FUNC12(struct pstore_info *psi,
				struct dentry *root, int quiet)
{
	int failed = 0;
	unsigned int stop_loop = 65536;

	if (!psi || !root)
		return;

	FUNC3(&psi->read_mutex);
	if (psi->open && psi->open(psi))
		goto out;

	/*
	 * Backend callback read() allocates record.buf. decompress_record()
	 * may reallocate record.buf. On success, pstore_mkfile() will keep
	 * the record.buf, so free it only on failure.
	 */
	for (; stop_loop; stop_loop--) {
		struct pstore_record *record;
		int rc;

		record = FUNC2(sizeof(*record), GFP_KERNEL);
		if (!record) {
			FUNC5("out of memory creating record\n");
			break;
		}
		FUNC8(record, psi);

		record->size = psi->read(record);

		/* No more records left in backend? */
		if (record->size <= 0) {
			FUNC1(record);
			break;
		}

		FUNC0(record);
		rc = FUNC7(root, record);
		if (rc) {
			/* pstore_mkfile() did not take record, so free it. */
			FUNC1(record->buf);
			FUNC1(record);
			if (rc != -EEXIST || !quiet)
				failed++;
		}
	}
	if (psi->close)
		psi->close(psi);
out:
	FUNC4(&psi->read_mutex);

	if (failed)
		FUNC6("failed to create %d record(s) from '%s'\n",
			failed, psi->name);
	if (!stop_loop)
		FUNC5("looping? Too many records seen from '%s'\n",
			psi->name);
}