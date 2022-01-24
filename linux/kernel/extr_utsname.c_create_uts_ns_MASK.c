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
struct uts_namespace {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct uts_namespace* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uts_ns_cache ; 

__attribute__((used)) static struct uts_namespace *FUNC2(void)
{
	struct uts_namespace *uts_ns;

	uts_ns = FUNC0(uts_ns_cache, GFP_KERNEL);
	if (uts_ns)
		FUNC1(&uts_ns->kref);
	return uts_ns;
}