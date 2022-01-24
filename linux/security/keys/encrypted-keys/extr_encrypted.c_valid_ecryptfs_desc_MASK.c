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

/* Variables and functions */
 int EINVAL ; 
 int KEY_ECRYPTFS_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *ecryptfs_desc)
{
	int i;

	if (FUNC2(ecryptfs_desc) != KEY_ECRYPTFS_DESC_LEN) {
		FUNC1("encrypted_key: key description must be %d hexadecimal "
		       "characters long\n", KEY_ECRYPTFS_DESC_LEN);
		return -EINVAL;
	}

	for (i = 0; i < KEY_ECRYPTFS_DESC_LEN; i++) {
		if (!FUNC0(ecryptfs_desc[i])) {
			FUNC1("encrypted_key: key description must contain "
			       "only hexadecimal characters\n");
			return -EINVAL;
		}
	}

	return 0;
}