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
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  EEXIST ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long IORESOURCE_BUSY ; 
 unsigned long IORESOURCE_SYSTEM_RAM ; 
 struct resource* FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*,unsigned long) ; 
 int /*<<< orphan*/  iomem_resource ; 
 scalar_t__ max_mem_size ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct resource *FUNC3(u64 start, u64 size)
{
	struct resource *res;
	unsigned long flags =  IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
	char *resource_name = "System RAM";

	if (start + size > max_mem_size)
		return FUNC0(-E2BIG);

	/*
	 * Request ownership of the new memory range.  This might be
	 * a child of an existing resource that was present but
	 * not marked as busy.
	 */
	res = FUNC1(&iomem_resource, start, size,
			       resource_name, flags);

	if (!res) {
		FUNC2("Unable to reserve System RAM region: %016llx->%016llx\n",
				start, start + size);
		return FUNC0(-EEXIST);
	}
	return res;
}