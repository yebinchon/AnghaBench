#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct report {TYPE_4__* session; } ;
struct map {TYPE_1__* dso; } ;
struct kmap {TYPE_2__* ref_reloc_sym; } ;
struct TYPE_7__ {int /*<<< orphan*/  host; } ;
struct TYPE_8__ {int /*<<< orphan*/  evlist; TYPE_3__ machines; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_5__ {scalar_t__ hit; } ;

/* Variables and functions */
 struct map* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct map*) ; 
 struct kmap* FUNC2 (struct map*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void FUNC5(const struct report *rep)
{
	struct map *kernel_map = FUNC0(&rep->session->machines.host);
	struct kmap *kernel_kmap = kernel_map ? FUNC2(kernel_map) : NULL;

	if (FUNC3(rep->session->evlist))
		return;

	if (kernel_map == NULL ||
	    (kernel_map->dso->hit &&
	     (kernel_kmap->ref_reloc_sym == NULL ||
	      kernel_kmap->ref_reloc_sym->addr == 0))) {
		const char *desc =
		    "As no suitable kallsyms nor vmlinux was found, kernel samples\n"
		    "can't be resolved.";

		if (kernel_map && FUNC1(kernel_map)) {
			desc = "If some relocation was applied (e.g. "
			       "kexec) symbols may be misresolved.";
		}

		FUNC4(
"Kernel address maps (/proc/{kallsyms,modules}) were restricted.\n\n"
"Check /proc/sys/kernel/kptr_restrict before running 'perf record'.\n\n%s\n\n"
"Samples in kernel modules can't be resolved as well.\n\n",
		desc);
	}
}