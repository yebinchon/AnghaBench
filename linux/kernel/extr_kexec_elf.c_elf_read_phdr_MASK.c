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
struct kexec_elf_info {struct elfhdr const* ehdr; int /*<<< orphan*/ * proghdrs; } ;
typedef  struct elfhdr {int e_phoff; int* e_ident; } const elfhdr ;
struct elf_phdr {void* p_align; void* p_memsz; void* p_filesz; void* p_vaddr; void* p_paddr; void* p_offset; void* p_flags; void* p_type; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t EI_CLASS ; 
#define  ELFCLASS32 129 
#define  ELFCLASS64 128 
 int ENOEXEC ; 
 void* FUNC0 (struct elfhdr const*,void*) ; 
 void* FUNC1 (struct elfhdr const*,void*) ; 
 scalar_t__ FUNC2 (struct elf_phdr*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *buf, size_t len,
			 struct kexec_elf_info *elf_info,
			 int idx)
{
	/* Override the const in proghdrs, we are the ones doing the loading. */
	struct elf_phdr *phdr = (struct elf_phdr *) &elf_info->proghdrs[idx];
	const struct elfhdr *ehdr = elf_info->ehdr;
	const char *pbuf;
	struct elf_phdr *buf_phdr;

	pbuf = buf + elf_info->ehdr->e_phoff + (idx * sizeof(*buf_phdr));
	buf_phdr = (struct elf_phdr *) pbuf;

	phdr->p_type   = FUNC0(elf_info->ehdr, buf_phdr->p_type);
	phdr->p_flags  = FUNC0(elf_info->ehdr, buf_phdr->p_flags);

	switch (ehdr->e_ident[EI_CLASS]) {
	case ELFCLASS64:
		phdr->p_offset = FUNC1(ehdr, buf_phdr->p_offset);
		phdr->p_paddr  = FUNC1(ehdr, buf_phdr->p_paddr);
		phdr->p_vaddr  = FUNC1(ehdr, buf_phdr->p_vaddr);
		phdr->p_filesz = FUNC1(ehdr, buf_phdr->p_filesz);
		phdr->p_memsz  = FUNC1(ehdr, buf_phdr->p_memsz);
		phdr->p_align  = FUNC1(ehdr, buf_phdr->p_align);
		break;

	case ELFCLASS32:
		phdr->p_offset = FUNC0(ehdr, buf_phdr->p_offset);
		phdr->p_paddr  = FUNC0(ehdr, buf_phdr->p_paddr);
		phdr->p_vaddr  = FUNC0(ehdr, buf_phdr->p_vaddr);
		phdr->p_filesz = FUNC0(ehdr, buf_phdr->p_filesz);
		phdr->p_memsz  = FUNC0(ehdr, buf_phdr->p_memsz);
		phdr->p_align  = FUNC0(ehdr, buf_phdr->p_align);
		break;

	default:
		FUNC3("Unknown ELF class.\n");
		return -EINVAL;
	}

	return FUNC2(phdr, len) ? 0 : -ENOEXEC;
}