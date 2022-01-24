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
struct user_namespace {struct key* persistent_keyring_register; } ;
struct keyring_index_key {int /*<<< orphan*/  description; } ;
struct key {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  scalar_t__ key_ref_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 scalar_t__ FUNC1 (long) ; 
 int /*<<< orphan*/  INVALID_GID ; 
 scalar_t__ FUNC2 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int KEY_USR_READ ; 
 int KEY_USR_VIEW ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,struct keyring_index_key*) ; 
 long FUNC5 (struct user_namespace*) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct key*) ; 
 scalar_t__ FUNC7 (struct key*,int) ; 

__attribute__((used)) static key_ref_t FUNC8(struct user_namespace *ns, kuid_t uid,
				       struct keyring_index_key *index_key)
{
	struct key *persistent;
	key_ref_t reg_ref, persistent_ref;

	if (!ns->persistent_keyring_register) {
		long err = FUNC5(ns);
		if (err < 0)
			return FUNC1(err);
	} else {
		reg_ref = FUNC7(ns->persistent_keyring_register, true);
		persistent_ref = FUNC4(reg_ref, index_key);
		if (persistent_ref)
			return persistent_ref;
	}

	persistent = FUNC6(index_key->description,
				   uid, INVALID_GID, FUNC3(),
				   ((KEY_POS_ALL & ~KEY_POS_SETATTR) |
				    KEY_USR_VIEW | KEY_USR_READ),
				   KEY_ALLOC_NOT_IN_QUOTA, NULL,
				   ns->persistent_keyring_register);
	if (FUNC2(persistent))
		return FUNC0(persistent);

	return FUNC7(persistent, true);
}