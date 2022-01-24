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
struct kexec_elf_info {int /*<<< orphan*/  proghdrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kexec_elf_info*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct kexec_elf_info *elf_info)
{
	FUNC0(elf_info->proghdrs);
	FUNC1(elf_info, 0, sizeof(*elf_info));
}