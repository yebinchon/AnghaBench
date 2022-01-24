#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;
struct TYPE_2__ {long serial; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long KEY_LOOKUP_CREATE ; 
 int /*<<< orphan*/  KEY_NEED_SEARCH ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

long FUNC5(key_serial_t id, int create)
{
	key_ref_t key_ref;
	unsigned long lflags;
	long ret;

	lflags = create ? KEY_LOOKUP_CREATE : 0;
	key_ref = FUNC4(id, lflags, KEY_NEED_SEARCH);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		goto error;
	}

	ret = FUNC3(key_ref)->serial;
	FUNC2(key_ref);
error:
	return ret;
}