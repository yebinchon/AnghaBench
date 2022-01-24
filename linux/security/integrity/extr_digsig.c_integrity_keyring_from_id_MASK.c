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
struct key {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct key* FUNC0 (int) ; 
 unsigned int const INTEGRITY_KEYRING_MAX ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 struct key** keyring ; 
 int /*<<< orphan*/ * keyring_name ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 struct key* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct key *FUNC5(const unsigned int id)
{
	if (id >= INTEGRITY_KEYRING_MAX)
		return FUNC0(-EINVAL);

	if (!keyring[id]) {
		keyring[id] =
			FUNC4(&key_type_keyring, keyring_name[id], NULL);
		if (FUNC1(keyring[id])) {
			int err = FUNC2(keyring[id]);
			FUNC3("no %s keyring: %d\n", keyring_name[id], err);
			keyring[id] = NULL;
			return FUNC0(err);
		}
	}

	return keyring[id];
}