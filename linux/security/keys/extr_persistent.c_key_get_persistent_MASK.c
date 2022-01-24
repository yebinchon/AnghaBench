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
struct user_namespace {int /*<<< orphan*/  keyring_sem; scalar_t__ persistent_keyring_register; } ;
struct keyring_index_key {char* description; int /*<<< orphan*/  desc_len; int /*<<< orphan*/ * type; } ;
struct key {long serial; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  scalar_t__ key_ref_t ;
typedef  int /*<<< orphan*/  index_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KEY_NEED_LINK ; 
 long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,struct keyring_index_key*) ; 
 int FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct user_namespace*,int /*<<< orphan*/ ,struct keyring_index_key*) ; 
 long FUNC8 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct key* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct keyring_index_key*) ; 
 int /*<<< orphan*/  FUNC12 (struct key*,int /*<<< orphan*/ ) ; 
 long FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (struct keyring_index_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  persistent_keyring_expiry ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC19(struct user_namespace *ns, kuid_t uid,
			       key_ref_t dest_ref)
{
	struct keyring_index_key index_key;
	struct key *persistent;
	key_ref_t reg_ref, persistent_ref;
	char buf[32];
	long ret;

	/* Look in the register if it exists */
	FUNC15(&index_key, 0, sizeof(index_key));
	index_key.type = &key_type_keyring;
	index_key.description = buf;
	index_key.desc_len = FUNC16(buf, "_persistent.%u", FUNC6(ns, uid));
	FUNC11(&index_key);

	if (ns->persistent_keyring_register) {
		reg_ref = FUNC14(ns->persistent_keyring_register, true);
		FUNC3(&ns->keyring_sem);
		persistent_ref = FUNC5(reg_ref, &index_key);
		FUNC17(&ns->keyring_sem);

		if (persistent_ref)
			goto found;
	}

	/* It wasn't in the register, so we'll need to create it.  We might
	 * also need to create the register.
	 */
	FUNC4(&ns->keyring_sem);
	persistent_ref = FUNC7(ns, uid, &index_key);
	FUNC18(&ns->keyring_sem);
	if (!FUNC0(persistent_ref))
		goto found;

	return FUNC1(persistent_ref);

found:
	ret = FUNC13(persistent_ref, FUNC2(), KEY_NEED_LINK);
	if (ret == 0) {
		persistent = FUNC10(persistent_ref);
		ret = FUNC8(FUNC10(dest_ref), persistent);
		if (ret == 0) {
			FUNC12(persistent, persistent_keyring_expiry);
			ret = persistent->serial;
		}
	}

	FUNC9(persistent_ref);
	return ret;
}