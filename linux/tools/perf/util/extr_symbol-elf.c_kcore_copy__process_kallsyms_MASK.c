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
typedef  scalar_t__ u64 ;
struct kcore_copy_info {scalar_t__ last_module_symbol; scalar_t__ first_symbol; scalar_t__ last_symbol; scalar_t__ etext; scalar_t__ stext; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct kcore_copy_info*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(void *arg, const char *name, char type,
					u64 start)
{
	struct kcore_copy_info *kci = arg;

	if (!FUNC1(type))
		return 0;

	if (FUNC3(name, '[')) {
		if (start > kci->last_module_symbol)
			kci->last_module_symbol = start;
		return 0;
	}

	if (!kci->first_symbol || start < kci->first_symbol)
		kci->first_symbol = start;

	if (!kci->last_symbol || start > kci->last_symbol)
		kci->last_symbol = start;

	if (!FUNC4(name, "_stext")) {
		kci->stext = start;
		return 0;
	}

	if (!FUNC4(name, "_etext")) {
		kci->etext = start;
		return 0;
	}

	if (FUNC0(name) && !FUNC2(kci, start))
		return -1;

	return 0;
}