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
struct key {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 long EACCES ; 
 long EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_KEEP ; 
 int /*<<< orphan*/  KEY_NEED_SETATTR ; 
 int /*<<< orphan*/  KEY_NEED_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct key* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC7(key_serial_t id)
{
	key_ref_t key_ref;
	struct key *key;
	long ret;

	key_ref = FUNC5(id, 0, KEY_NEED_WRITE);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		if (ret != -EACCES)
			goto error;
		key_ref = FUNC5(id, 0, KEY_NEED_SETATTR);
		if (FUNC0(key_ref)) {
			ret = FUNC1(key_ref);
			goto error;
		}
	}

	key = FUNC3(key_ref);
	ret = 0;
	if (FUNC6(KEY_FLAG_KEEP, &key->flags))
		ret = -EPERM;
	else
		FUNC4(key);

	FUNC2(key_ref);
error:
	return ret;
}