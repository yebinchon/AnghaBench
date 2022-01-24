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
struct key_type {int /*<<< orphan*/  key; struct key_type* (* lookup_restriction ) (char const*) ;} ;
struct key_restriction {int /*<<< orphan*/  key; struct key_type* (* lookup_restriction ) (char const*) ;} ;
struct key {int /*<<< orphan*/  sem; struct key_type* restrict_link; int /*<<< orphan*/ * type; } ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int EDEADLK ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOTDIR ; 
 scalar_t__ FUNC0 (struct key_type*) ; 
 int FUNC1 (struct key_type*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 struct key_type* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct key_type*) ; 
 scalar_t__ FUNC8 (struct key*,struct key_type*) ; 
 struct key_type* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyring_serialise_restrict_sem ; 
 int /*<<< orphan*/  FUNC10 (struct key_type*) ; 
 int /*<<< orphan*/  restrict_link_reject ; 
 struct key_type* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(key_ref_t keyring_ref, const char *type,
		     const char *restriction)
{
	struct key *keyring;
	struct key_type *restrict_type = NULL;
	struct key_restriction *restrict_link;
	int ret = 0;

	keyring = FUNC5(keyring_ref);
	FUNC3(keyring);

	if (keyring->type != &key_type_keyring)
		return -ENOTDIR;

	if (!type) {
		restrict_link = FUNC9(restrict_link_reject);
	} else {
		restrict_type = FUNC6(type);

		if (FUNC0(restrict_type))
			return FUNC1(restrict_type);

		if (!restrict_type->lookup_restriction) {
			ret = -ENOENT;
			goto error;
		}

		restrict_link = restrict_type->lookup_restriction(restriction);
	}

	if (FUNC0(restrict_link)) {
		ret = FUNC1(restrict_link);
		goto error;
	}

	FUNC2(&keyring->sem);
	FUNC2(&keyring_serialise_restrict_sem);

	if (keyring->restrict_link)
		ret = -EEXIST;
	else if (FUNC8(keyring, restrict_link))
		ret = -EDEADLK;
	else
		keyring->restrict_link = restrict_link;

	FUNC12(&keyring_serialise_restrict_sem);
	FUNC12(&keyring->sem);

	if (ret < 0) {
		FUNC4(restrict_link->key);
		FUNC10(restrict_link);
	}

error:
	if (restrict_type)
		FUNC7(restrict_type);

	return ret;
}