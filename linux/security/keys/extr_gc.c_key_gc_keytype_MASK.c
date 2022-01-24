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
struct key_type {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_GC_REAPING_KEYTYPE ; 
 int /*<<< orphan*/  KEY_GC_REAP_KEYTYPE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct key_type* key_gc_dead_keytype ; 
 int /*<<< orphan*/  key_gc_flags ; 
 int /*<<< orphan*/  key_gc_work ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct key_type *ktype)
{
	FUNC1("%s", ktype->name);

	key_gc_dead_keytype = ktype;
	FUNC4(KEY_GC_REAPING_KEYTYPE, &key_gc_flags);
	FUNC5();
	FUNC4(KEY_GC_REAP_KEYTYPE, &key_gc_flags);

	FUNC0("schedule");
	FUNC3(&key_gc_work);

	FUNC0("sleep");
	FUNC6(&key_gc_flags, KEY_GC_REAPING_KEYTYPE,
		    TASK_UNINTERRUPTIBLE);

	key_gc_dead_keytype = NULL;
	FUNC2("");
}