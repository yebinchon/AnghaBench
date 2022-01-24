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
struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; int e_phnum; } ;
struct elf_phdr {scalar_t__ p_type; unsigned long p_vaddr; unsigned long p_filesz; unsigned long p_memsz; int /*<<< orphan*/  p_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long EFAULT ; 
 unsigned long EINVAL ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long ENOMEM ; 
 scalar_t__ ET_DYN ; 
 scalar_t__ ET_EXEC ; 
 int MAP_DENYWRITE ; 
 int MAP_FIXED_NOREPLACE ; 
 int MAP_PRIVATE ; 
 int PROT_EXEC ; 
 scalar_t__ PT_LOAD ; 
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/  VM_EXEC ; 
 int /*<<< orphan*/  FUNC3 (struct elfhdr*) ; 
 scalar_t__ FUNC4 (struct elfhdr*) ; 
 unsigned long FUNC5 (struct file*,unsigned long,struct elf_phdr*,int,int,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (struct elf_phdr*,int) ; 
 unsigned long FUNC9 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC10(struct elfhdr *interp_elf_ex,
		struct file *interpreter, unsigned long *interp_map_addr,
		unsigned long no_base, struct elf_phdr *interp_elf_phdata)
{
	struct elf_phdr *eppnt;
	unsigned long load_addr = 0;
	int load_addr_set = 0;
	unsigned long last_bss = 0, elf_bss = 0;
	int bss_prot = 0;
	unsigned long error = ~0UL;
	unsigned long total_size;
	int i;

	/* First of all, some simple consistency checks */
	if (interp_elf_ex->e_type != ET_EXEC &&
	    interp_elf_ex->e_type != ET_DYN)
		goto out;
	if (!FUNC3(interp_elf_ex) ||
	    FUNC4(interp_elf_ex))
		goto out;
	if (!interpreter->f_op->mmap)
		goto out;

	total_size = FUNC8(interp_elf_phdata,
					interp_elf_ex->e_phnum);
	if (!total_size) {
		error = -EINVAL;
		goto out;
	}

	eppnt = interp_elf_phdata;
	for (i = 0; i < interp_elf_ex->e_phnum; i++, eppnt++) {
		if (eppnt->p_type == PT_LOAD) {
			int elf_type = MAP_PRIVATE | MAP_DENYWRITE;
			int elf_prot = FUNC6(eppnt->p_flags);
			unsigned long vaddr = 0;
			unsigned long k, map_addr;

			vaddr = eppnt->p_vaddr;
			if (interp_elf_ex->e_type == ET_EXEC || load_addr_set)
				elf_type |= MAP_FIXED_NOREPLACE;
			else if (no_base && interp_elf_ex->e_type == ET_DYN)
				load_addr = -vaddr;

			map_addr = FUNC5(interpreter, load_addr + vaddr,
					eppnt, elf_prot, elf_type, total_size);
			total_size = 0;
			if (!*interp_map_addr)
				*interp_map_addr = map_addr;
			error = map_addr;
			if (FUNC0(map_addr))
				goto out;

			if (!load_addr_set &&
			    interp_elf_ex->e_type == ET_DYN) {
				load_addr = map_addr - FUNC2(vaddr);
				load_addr_set = 1;
			}

			/*
			 * Check to see if the section's size will overflow the
			 * allowed task size. Note that p_filesz must always be
			 * <= p_memsize so it's only necessary to check p_memsz.
			 */
			k = load_addr + eppnt->p_vaddr;
			if (FUNC0(k) ||
			    eppnt->p_filesz > eppnt->p_memsz ||
			    eppnt->p_memsz > TASK_SIZE ||
			    TASK_SIZE - eppnt->p_memsz < k) {
				error = -ENOMEM;
				goto out;
			}

			/*
			 * Find the end of the file mapping for this phdr, and
			 * keep track of the largest address we see for this.
			 */
			k = load_addr + eppnt->p_vaddr + eppnt->p_filesz;
			if (k > elf_bss)
				elf_bss = k;

			/*
			 * Do the same thing for the memory mapping - between
			 * elf_bss and last_bss is the bss section.
			 */
			k = load_addr + eppnt->p_vaddr + eppnt->p_memsz;
			if (k > last_bss) {
				last_bss = k;
				bss_prot = elf_prot;
			}
		}
	}

	/*
	 * Now fill out the bss section: first pad the last page from
	 * the file up to the page boundary, and zero it from elf_bss
	 * up to the end of the page.
	 */
	if (FUNC7(elf_bss)) {
		error = -EFAULT;
		goto out;
	}
	/*
	 * Next, align both the file and mem bss up to the page size,
	 * since this is where elf_bss was just zeroed up to, and where
	 * last_bss will end after the vm_brk_flags() below.
	 */
	elf_bss = FUNC1(elf_bss);
	last_bss = FUNC1(last_bss);
	/* Finally, if there is still more bss to allocate, do it. */
	if (last_bss > elf_bss) {
		error = FUNC9(elf_bss, last_bss - elf_bss,
				bss_prot & PROT_EXEC ? VM_EXEC : 0);
		if (error)
			goto out;
	}

	error = load_addr;
out:
	return error;
}