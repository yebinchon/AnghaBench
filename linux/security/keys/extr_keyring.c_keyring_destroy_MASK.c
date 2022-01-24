#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key_restriction {int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int /*<<< orphan*/ * next; } ;
struct key {int /*<<< orphan*/  keys; struct key_restriction* restrict_link; TYPE_1__ name_link; scalar_t__ description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 
 int /*<<< orphan*/  keyring_name_lock ; 
 int /*<<< orphan*/  FUNC2 (struct key_restriction*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct key *keyring)
{
	if (keyring->description) {
		FUNC5(&keyring_name_lock);

		if (keyring->name_link.next != NULL &&
		    !FUNC4(&keyring->name_link))
			FUNC3(&keyring->name_link);

		FUNC6(&keyring_name_lock);
	}

	if (keyring->restrict_link) {
		struct key_restriction *keyres = keyring->restrict_link;

		FUNC1(keyres->key);
		FUNC2(keyres);
	}

	FUNC0(&keyring->keys, &keyring_assoc_array_ops);
}