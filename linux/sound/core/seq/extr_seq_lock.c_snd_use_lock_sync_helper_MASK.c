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
typedef  int /*<<< orphan*/  snd_use_lock_t ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(snd_use_lock_t *lockp, const char *file, int line)
{
	int warn_count = 5 * HZ;

	if (FUNC0(lockp) < 0) {
		FUNC1("ALSA: seq_lock: lock trouble [counter = %d] in %s:%d\n", FUNC0(lockp), file, line);
		return;
	}
	while (FUNC0(lockp) > 0) {
		if (warn_count-- == 0)
			FUNC1("ALSA: seq_lock: waiting [%d left] in %s:%d\n", FUNC0(lockp), file, line);
		FUNC2(1);
	}
}