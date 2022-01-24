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
typedef  int /*<<< orphan*/  u8 ;
struct inode {int dummy; } ;
struct ima_template_entry {int /*<<< orphan*/  pcr; int /*<<< orphan*/  digest; } ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 int AUDIT_CAUSE_LEN_MAX ; 
 int /*<<< orphan*/  AUDIT_INTEGRITY_PCR ; 
 int EEXIST ; 
 int TPM_DIGEST_SIZE ; 
 int FUNC0 (struct ima_template_entry*,int) ; 
 int /*<<< orphan*/  ima_extend_list_mutex ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*,unsigned char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

int FUNC9(struct ima_template_entry *entry, int violation,
			   const char *op, struct inode *inode,
			   const unsigned char *filename)
{
	u8 digest[TPM_DIGEST_SIZE];
	const char *audit_cause = "hash_added";
	char tpm_audit_cause[AUDIT_CAUSE_LEN_MAX];
	int audit_info = 1;
	int result = 0, tpmresult = 0;

	FUNC6(&ima_extend_list_mutex);
	if (!violation) {
		FUNC4(digest, entry->digest, sizeof(digest));
		if (FUNC1(digest, entry->pcr)) {
			audit_cause = "hash_exists";
			result = -EEXIST;
			goto out;
		}
	}

	result = FUNC0(entry, 1);
	if (result < 0) {
		audit_cause = "ENOMEM";
		audit_info = 0;
		goto out;
	}

	if (violation)		/* invalidate pcr */
		FUNC5(digest, 0xff, sizeof(digest));

	tpmresult = FUNC2(digest, entry->pcr);
	if (tpmresult != 0) {
		FUNC8(tpm_audit_cause, AUDIT_CAUSE_LEN_MAX, "TPM_error(%d)",
			 tpmresult);
		audit_cause = tpm_audit_cause;
		audit_info = 0;
	}
out:
	FUNC7(&ima_extend_list_mutex);
	FUNC3(AUDIT_INTEGRITY_PCR, inode, filename,
			    op, audit_cause, result, audit_info);
	return result;
}