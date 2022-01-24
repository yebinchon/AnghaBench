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
struct kexec_elf_info {int /*<<< orphan*/ * proghdrs; struct elfhdr* ehdr; } ;
struct elfhdr {int e_phnum; } ;
struct elf_phdr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (char const*,size_t,struct kexec_elf_info*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *buf, size_t len,
			  struct kexec_elf_info *elf_info)
{
	size_t phdr_size, i;
	const struct elfhdr *ehdr = elf_info->ehdr;

	/*
	 * e_phnum is at most 65535 so calculating the size of the
	 * program header cannot overflow.
	 */
	phdr_size = sizeof(struct elf_phdr) * ehdr->e_phnum;

	elf_info->proghdrs = FUNC2(phdr_size, GFP_KERNEL);
	if (!elf_info->proghdrs)
		return -ENOMEM;

	for (i = 0; i < ehdr->e_phnum; i++) {
		int ret;

		ret = FUNC0(buf, len, elf_info, i);
		if (ret) {
			FUNC1(elf_info->proghdrs);
			elf_info->proghdrs = NULL;
			return ret;
		}
	}

	return 0;
}