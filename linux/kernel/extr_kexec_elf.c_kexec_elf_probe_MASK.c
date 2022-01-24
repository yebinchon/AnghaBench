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
struct kexec_elf_info {int dummy; } ;
struct elfhdr {int dummy; } ;

/* Variables and functions */
 int ENOEXEC ; 
 scalar_t__ FUNC0 (struct elfhdr*) ; 
 int FUNC1 (char const*,unsigned long,struct elfhdr*,struct kexec_elf_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct kexec_elf_info*) ; 

int FUNC3(const char *buf, unsigned long len)
{
	struct elfhdr ehdr;
	struct kexec_elf_info elf_info;
	int ret;

	ret = FUNC1(buf, len, &ehdr, &elf_info);
	if (ret)
		return ret;

	FUNC2(&elf_info);

	return FUNC0(&ehdr) ? 0 : -ENOEXEC;
}