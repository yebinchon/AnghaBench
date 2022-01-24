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
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  keys; int /*<<< orphan*/ * type; } ;
struct assoc_array_edit {int dummy; } ;

/* Variables and functions */
 int ENOTDIR ; 
 scalar_t__ FUNC0 (struct assoc_array_edit*) ; 
 int FUNC1 (struct assoc_array_edit*) ; 
 int /*<<< orphan*/  FUNC2 (struct assoc_array_edit*) ; 
 struct assoc_array_edit* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  keyring_assoc_array_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct key *keyring)
{
	struct assoc_array_edit *edit;
	int ret;

	if (keyring->type != &key_type_keyring)
		return -ENOTDIR;

	FUNC4(&keyring->sem);

	edit = FUNC3(&keyring->keys, &keyring_assoc_array_ops);
	if (FUNC0(edit)) {
		ret = FUNC1(edit);
	} else {
		if (edit)
			FUNC2(edit);
		FUNC5(keyring, 0);
		ret = 0;
	}

	FUNC6(&keyring->sem);
	return ret;
}