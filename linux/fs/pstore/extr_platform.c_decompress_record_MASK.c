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
struct pstore_record {int compressed; scalar_t__ type; char* buf; int size; scalar_t__ ecc_notice_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PSTORE_TYPE_DMESG ; 
 int /*<<< orphan*/  big_oops_buf ; 
 int big_oops_buf_sz ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  tfm ; 

__attribute__((used)) static void FUNC7(struct pstore_record *record)
{
	int ret;
	int unzipped_len;
	char *unzipped, *workspace;

	if (!record->compressed)
		return;

	/* Only PSTORE_TYPE_DMESG support compression. */
	if (record->type != PSTORE_TYPE_DMESG) {
		FUNC6("ignored compressed record type %d\n", record->type);
		return;
	}

	/* Missing compression buffer means compression was not initialized. */
	if (!big_oops_buf) {
		FUNC6("no decompression method initialized!\n");
		return;
	}

	/* Allocate enough space to hold max decompression and ECC. */
	unzipped_len = big_oops_buf_sz;
	workspace = FUNC2(unzipped_len + record->ecc_notice_size,
			    GFP_KERNEL);
	if (!workspace)
		return;

	/* After decompression "unzipped_len" is almost certainly smaller. */
	ret = FUNC0(tfm, record->buf, record->size,
					  workspace, &unzipped_len);
	if (ret) {
		FUNC5("crypto_comp_decompress failed, ret = %d!\n", ret);
		FUNC1(workspace);
		return;
	}

	/* Append ECC notice to decompressed buffer. */
	FUNC4(workspace + unzipped_len, record->buf + record->size,
	       record->ecc_notice_size);

	/* Copy decompressed contents into an minimum-sized allocation. */
	unzipped = FUNC3(workspace, unzipped_len + record->ecc_notice_size,
			   GFP_KERNEL);
	FUNC1(workspace);
	if (!unzipped)
		return;

	/* Swap out compressed contents with decompressed contents. */
	FUNC1(record->buf);
	record->buf = unzipped;
	record->size = unzipped_len;
	record->compressed = false;
}