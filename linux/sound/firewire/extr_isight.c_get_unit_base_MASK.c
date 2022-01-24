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
struct fw_unit {int /*<<< orphan*/  directory; } ;
struct fw_csr_iterator {int dummy; } ;

/* Variables and functions */
 int CSR_OFFSET ; 
 scalar_t__ CSR_REGISTER_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct fw_csr_iterator*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fw_csr_iterator*,int*,int*) ; 

__attribute__((used)) static u64 FUNC2(struct fw_unit *unit)
{
	struct fw_csr_iterator i;
	int key, value;

	FUNC0(&i, unit->directory);
	while (FUNC1(&i, &key, &value))
		if (key == CSR_OFFSET)
			return CSR_REGISTER_BASE + value * 4;
	return 0;
}