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
struct fw_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMORY_SPACE_EFW_COMMAND ; 
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int FUNC0 (struct fw_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC1(struct fw_unit *unit,
			    const void *cmd, unsigned int size)
{
	return FUNC0(unit, TCODE_WRITE_BLOCK_REQUEST,
				  MEMORY_SPACE_EFW_COMMAND,
				  (void *)cmd, size, 0);
}