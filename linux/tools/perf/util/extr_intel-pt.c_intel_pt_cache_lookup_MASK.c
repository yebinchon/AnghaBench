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
struct machine {int dummy; } ;
struct intel_pt_cache_entry {int dummy; } ;
struct dso {int /*<<< orphan*/  auxtrace_cache; } ;
struct auxtrace_cache {int dummy; } ;

/* Variables and functions */
 struct intel_pt_cache_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct auxtrace_cache* FUNC1 (struct dso*,struct machine*) ; 

__attribute__((used)) static struct intel_pt_cache_entry *
FUNC2(struct dso *dso, struct machine *machine, u64 offset)
{
	struct auxtrace_cache *c = FUNC1(dso, machine);

	if (!c)
		return NULL;

	return FUNC0(dso->auxtrace_cache, offset);
}