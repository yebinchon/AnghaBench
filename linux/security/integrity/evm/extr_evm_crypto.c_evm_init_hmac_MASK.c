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
struct xattr {int /*<<< orphan*/  value_len; int /*<<< orphan*/  value; } ;
struct shash_desc {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVM_XATTR_HMAC ; 
 int /*<<< orphan*/  HASH_ALGO_SHA1 ; 
 scalar_t__ FUNC0 (struct shash_desc*) ; 
 int FUNC1 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct shash_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,struct inode*,int /*<<< orphan*/ ,char*) ; 
 struct shash_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct inode *inode, const struct xattr *lsm_xattr,
		  char *hmac_val)
{
	struct shash_desc *desc;

	desc = FUNC4(EVM_XATTR_HMAC, HASH_ALGO_SHA1);
	if (FUNC0(desc)) {
		FUNC6("init_desc failed\n");
		return FUNC1(desc);
	}

	FUNC2(desc, lsm_xattr->value, lsm_xattr->value_len);
	FUNC3(desc, inode, EVM_XATTR_HMAC, hmac_val);
	FUNC5(desc);
	return 0;
}