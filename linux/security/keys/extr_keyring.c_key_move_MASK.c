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
struct key {int /*<<< orphan*/  index_key; int /*<<< orphan*/  serial; } ;
struct assoc_array_edit {scalar_t__ dead_leaf; } ;

/* Variables and functions */
 int EEXIST ; 
 unsigned int KEYCTL_MOVE_EXCL ; 
 int /*<<< orphan*/  FUNC0 (struct key*,struct assoc_array_edit**) ; 
 int FUNC1 (struct key*,int /*<<< orphan*/ *,struct assoc_array_edit**) ; 
 int FUNC2 (struct key*,struct key*) ; 
 int FUNC3 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,int /*<<< orphan*/ *,struct assoc_array_edit*) ; 
 int FUNC5 (struct key*,struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct key*,struct key*,struct assoc_array_edit**) ; 
 int FUNC7 (struct key*,struct key*,struct assoc_array_edit**) ; 
 int /*<<< orphan*/  FUNC8 (struct key*,struct key*,struct assoc_array_edit*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

int FUNC12(struct key *key,
	     struct key *from_keyring,
	     struct key *to_keyring,
	     unsigned int flags)
{
	struct assoc_array_edit *from_edit = NULL, *to_edit = NULL;
	int ret;

	FUNC9("%d,%d,%d", key->serial, from_keyring->serial, to_keyring->serial);

	if (from_keyring == to_keyring)
		return 0;

	FUNC10(key);
	FUNC10(from_keyring);
	FUNC10(to_keyring);

	ret = FUNC5(from_keyring, to_keyring, &key->index_key);
	if (ret < 0)
		goto out;
	ret = FUNC7(from_keyring, key, &from_edit);
	if (ret < 0)
		goto error;
	ret = FUNC1(to_keyring, &key->index_key, &to_edit);
	if (ret < 0)
		goto error;

	ret = -EEXIST;
	if (to_edit->dead_leaf && (flags & KEYCTL_MOVE_EXCL))
		goto error;

	ret = FUNC3(to_keyring, key);
	if (ret < 0)
		goto error;
	ret = FUNC2(to_keyring, key);
	if (ret < 0)
		goto error;

	FUNC6(from_keyring, key, &from_edit);
	FUNC0(key, &to_edit);
error:
	FUNC4(to_keyring, &key->index_key, to_edit);
	FUNC8(from_keyring, key, from_edit);
out:
	FUNC11(" = %d", ret);
	return ret;
}