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
typedef  scalar_t__ u64 ;
struct map {int dummy; } ;
struct kmap {TYPE_1__* ref_reloc_sym; } ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (char const*,scalar_t__,scalar_t__*) ; 
 struct kmap* FUNC1 (struct map*) ; 
 int FUNC2 (char const*,struct map*) ; 

__attribute__((used)) static int FUNC3(const char *kallsyms_filename,
				    struct map *map)
{
	struct kmap *kmap = FUNC1(map);

	if (!kmap)
		return -EINVAL;

	if (kmap->ref_reloc_sym && kmap->ref_reloc_sym->name) {
		u64 start;

		if (FUNC0(kallsyms_filename,
						 kmap->ref_reloc_sym->name, &start))
			return -ENOENT;
		if (start != kmap->ref_reloc_sym->addr)
			return -EINVAL;
	}

	return FUNC2(kallsyms_filename, map);
}