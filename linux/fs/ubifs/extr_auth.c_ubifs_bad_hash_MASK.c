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
typedef  int /*<<< orphan*/  const u8 ;
struct ubifs_info {int hash_len; } ;

/* Variables and functions */
 int UBIFS_HASH_ARR_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,void const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,char*,int,int,...) ; 

void FUNC3(const struct ubifs_info *c, const void *node, const u8 *hash,
		    int lnum, int offs)
{
	int len = FUNC1(c->hash_len, 20);
	int cropped = len != c->hash_len;
	const char *cont = cropped ? "..." : "";

	u8 calc[UBIFS_HASH_ARR_SZ];

	FUNC0(c, node, calc);

	FUNC2(c, "hash mismatch on node at LEB %d:%d", lnum, offs);
	FUNC2(c, "hash expected:   %*ph%s", len, hash, cont);
	FUNC2(c, "hash calculated: %*ph%s", len, calc, cont);
}