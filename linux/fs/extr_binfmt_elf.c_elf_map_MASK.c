#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct elf_phdr {unsigned long p_filesz; unsigned long p_offset; int /*<<< orphan*/  p_vaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  EEXIST ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int MAP_FIXED_NOREPLACE ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 unsigned long FUNC7 (struct file*,unsigned long,unsigned long,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC9(struct file *filep, unsigned long addr,
		const struct elf_phdr *eppnt, int prot, int type,
		unsigned long total_size)
{
	unsigned long map_addr;
	unsigned long size = eppnt->p_filesz + FUNC2(eppnt->p_vaddr);
	unsigned long off = eppnt->p_offset - FUNC2(eppnt->p_vaddr);
	addr = FUNC3(addr);
	size = FUNC1(size);

	/* mmap() will return -EINVAL if given a zero size, but a
	 * segment with zero filesize is perfectly valid */
	if (!size)
		return addr;

	/*
	* total_size is the size of the ELF (interpreter) image.
	* The _first_ mmap needs to know the full size, otherwise
	* randomization might put this image into an overlapping
	* position with the ELF binary image. (since size < total_size)
	* So we first map the 'big' image - and unmap the remainder at
	* the end. (which unmap is needed for ELF images with holes.)
	*/
	if (total_size) {
		total_size = FUNC1(total_size);
		map_addr = FUNC7(filep, addr, total_size, prot, type, off);
		if (!FUNC0(map_addr))
			FUNC8(map_addr+size, total_size-size);
	} else
		map_addr = FUNC7(filep, addr, size, prot, type, off);

	if ((type & MAP_FIXED_NOREPLACE) &&
	    FUNC4((void *)map_addr) == -EEXIST)
		FUNC5("%d (%s): Uhuuh, elf segment at %px requested but the memory is mapped already\n",
			FUNC6(current), current->comm, (void *)addr);

	return(map_addr);
}