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
typedef  int /*<<< orphan*/  uint16_t ;
struct elfhdr {scalar_t__* e_ident; } ;

/* Variables and functions */
 size_t EI_DATA ; 
 scalar_t__ ELFDATA2LSB ; 
 scalar_t__ ELFDATA2MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC2(const struct elfhdr *ehdr, uint16_t value)
{
	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
		value = FUNC1(value);
	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
		value = FUNC0(value);

	return value;
}