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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct printf_spec {int field_width; } ;
typedef  int /*<<< orphan*/  ptr ;

/* Variables and functions */
 int /*<<< orphan*/  debug_boot_weak_hash ; 
 char* FUNC0 (char*,char*,char const*,struct printf_spec) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  not_filled_random_ptr_key ; 
 char* FUNC2 (char*,char*,void const*,struct printf_spec) ; 
 int /*<<< orphan*/  ptr_key ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC7(char *buf, char *end, const void *ptr,
		       struct printf_spec spec)
{
	const char *str = sizeof(ptr) == 8 ? "(____ptrval____)" : "(ptrval)";
	unsigned long hashval;

	/* When debugging early boot use non-cryptographically secure hash. */
	if (FUNC6(debug_boot_weak_hash)) {
		hashval = FUNC1((unsigned long)ptr, 32);
		return FUNC2(buf, end, (const void *)hashval, spec);
	}

	if (FUNC5(&not_filled_random_ptr_key)) {
		spec.field_width = 2 * sizeof(ptr);
		/* string length must be less than default_width */
		return FUNC0(buf, end, str, spec);
	}

#ifdef CONFIG_64BIT
	hashval = (unsigned long)siphash_1u64((u64)ptr, &ptr_key);
	/*
	 * Mask off the first 32 bits, this makes explicit that we have
	 * modified the address (and 32 bits is plenty for a unique ID).
	 */
	hashval = hashval & 0xffffffff;
#else
	hashval = (unsigned long)FUNC3((u32)ptr, &ptr_key);
#endif
	return FUNC2(buf, end, (const void *)hashval, spec);
}