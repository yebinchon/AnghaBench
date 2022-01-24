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
struct test_key {int init_state; int (* test_key ) () ;int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct test_key *keys, int size, bool invert)
{
	int i;
	bool ret, init;

	for (i = 0; i < size; i++) {
		ret = FUNC0(keys[i].key);
		init = keys[i].init_state;
		if (ret != (invert ? !init : init))
			return -EINVAL;
		ret = keys[i].test_key();
		if (FUNC0(keys[i].key)) {
			if (!ret)
				return -EINVAL;
		} else {
			if (ret)
				return -EINVAL;
		}
	}
	return 0;
}