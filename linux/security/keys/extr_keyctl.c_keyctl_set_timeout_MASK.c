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
typedef  struct key* key_ref_t ;

/* Variables and functions */
 long EACCES ; 
 long EPERM ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_KEEP ; 
 int KEY_LOOKUP_CREATE ; 
 int KEY_LOOKUP_PARTIAL ; 
 int /*<<< orphan*/  KEY_NEED_SETATTR ; 
 long FUNC1 (struct key*) ; 
 struct key* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 struct key* FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,unsigned int) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC8(key_serial_t id, unsigned timeout)
{
	struct key *key, *instkey;
	key_ref_t key_ref;
	long ret;

	key_ref = FUNC6(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
				  KEY_NEED_SETATTR);
	if (FUNC0(key_ref)) {
		/* setting the timeout on a key under construction is permitted
		 * if we have the authorisation token handy */
		if (FUNC1(key_ref) == -EACCES) {
			instkey = FUNC2(id);
			if (!FUNC0(instkey)) {
				FUNC3(instkey);
				key_ref = FUNC6(id,
							  KEY_LOOKUP_PARTIAL,
							  0);
				if (!FUNC0(key_ref))
					goto okay;
			}
		}

		ret = FUNC1(key_ref);
		goto error;
	}

okay:
	key = FUNC4(key_ref);
	ret = 0;
	if (FUNC7(KEY_FLAG_KEEP, &key->flags))
		ret = -EPERM;
	else
		FUNC5(key, timeout);
	FUNC3(key);

error:
	return ret;
}