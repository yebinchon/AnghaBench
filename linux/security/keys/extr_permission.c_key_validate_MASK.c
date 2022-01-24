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
typedef  scalar_t__ time64_t ;
struct key {int /*<<< orphan*/  expiry; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EKEYEXPIRED ; 
 int EKEYREVOKED ; 
 int ENOKEY ; 
 int KEY_FLAG_DEAD ; 
 int KEY_FLAG_INVALIDATED ; 
 int KEY_FLAG_REVOKED ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

int FUNC2(const struct key *key)
{
	unsigned long flags = FUNC0(key->flags);
	time64_t expiry = FUNC0(key->expiry);

	if (flags & (1 << KEY_FLAG_INVALIDATED))
		return -ENOKEY;

	/* check it's still accessible */
	if (flags & ((1 << KEY_FLAG_REVOKED) |
		     (1 << KEY_FLAG_DEAD)))
		return -EKEYREVOKED;

	/* check it hasn't expired */
	if (expiry) {
		if (FUNC1() >= expiry)
			return -EKEYEXPIRED;
	}

	return 0;
}