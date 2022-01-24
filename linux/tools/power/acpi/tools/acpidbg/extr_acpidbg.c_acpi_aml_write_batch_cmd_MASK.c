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
struct circ_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_AML_BATCH_READ_LOG ; 
 int /*<<< orphan*/  acpi_aml_batch_state ; 
 int FUNC0 (int,struct circ_buf*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 

__attribute__((used)) static int FUNC2(int fd, struct circ_buf *crc)
{
	int len;

	len = FUNC0(fd, crc);
	if (FUNC1(crc) == 0)
		acpi_aml_batch_state = ACPI_AML_BATCH_READ_LOG;
	return len;
}