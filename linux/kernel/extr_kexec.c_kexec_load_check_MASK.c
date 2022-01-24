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

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_BOOT ; 
 int EINVAL ; 
 int EPERM ; 
 unsigned long KEXEC_ARCH_MASK ; 
 unsigned long KEXEC_FLAGS ; 
 unsigned long KEXEC_SEGMENT_MAX ; 
 int /*<<< orphan*/  LOADING_KEXEC_IMAGE ; 
 int /*<<< orphan*/  LOCKDOWN_KEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ kexec_load_disabled ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(unsigned long nr_segments,
				   unsigned long flags)
{
	int result;

	/* We only trust the superuser with rebooting the system. */
	if (!FUNC0(CAP_SYS_BOOT) || kexec_load_disabled)
		return -EPERM;

	/* Permit LSMs and IMA to fail the kexec */
	result = FUNC1(LOADING_KEXEC_IMAGE);
	if (result < 0)
		return result;

	/*
	 * kexec can be used to circumvent module loading restrictions, so
	 * prevent loading in that case
	 */
	result = FUNC2(LOCKDOWN_KEXEC);
	if (result)
		return result;

	/*
	 * Verify we have a legal set of flags
	 * This leaves us room for future extensions.
	 */
	if ((flags & KEXEC_FLAGS) != (flags & ~KEXEC_ARCH_MASK))
		return -EINVAL;

	/* Put an artificial cap on the number
	 * of segments passed to kexec_load.
	 */
	if (nr_segments > KEXEC_SEGMENT_MAX)
		return -EINVAL;

	return 0;
}