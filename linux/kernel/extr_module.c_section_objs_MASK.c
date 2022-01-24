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
struct load_info {TYPE_1__* sechdrs; } ;
struct TYPE_2__ {size_t sh_size; scalar_t__ sh_addr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct load_info const*,char const*) ; 

__attribute__((used)) static void *FUNC1(const struct load_info *info,
			  const char *name,
			  size_t object_size,
			  unsigned int *num)
{
	unsigned int sec = FUNC0(info, name);

	/* Section 0 has sh_addr 0 and sh_size 0. */
	*num = info->sechdrs[sec].sh_size / object_size;
	return (void *)info->sechdrs[sec].sh_addr;
}