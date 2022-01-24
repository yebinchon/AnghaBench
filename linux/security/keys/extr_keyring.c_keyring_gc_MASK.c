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
typedef  int /*<<< orphan*/  time64_t ;
struct key {int flags; int /*<<< orphan*/  sem; int /*<<< orphan*/  keys; scalar_t__ description; int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 int KEY_FLAG_INVALIDATED ; 
 int KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 
 int /*<<< orphan*/  keyring_gc_check_iterator ; 
 int /*<<< orphan*/  keyring_gc_select_iterator ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct key *keyring, time64_t limit)
{
	int result;

	FUNC3("%x{%s}", keyring->serial, keyring->description ?: "");

	if (keyring->flags & ((1 << KEY_FLAG_INVALIDATED) |
			      (1 << KEY_FLAG_REVOKED)))
		goto dont_gc;

	/* scan the keyring looking for dead keys */
	FUNC5();
	result = FUNC1(&keyring->keys,
				     keyring_gc_check_iterator, &limit);
	FUNC6();
	if (result == true)
		goto do_gc;

dont_gc:
	FUNC4(" [no gc]");
	return;

do_gc:
	FUNC2(&keyring->sem);
	FUNC0(&keyring->keys, &keyring_assoc_array_ops,
		       keyring_gc_select_iterator, &limit);
	FUNC7(&keyring->sem);
	FUNC4(" [gc]");
}