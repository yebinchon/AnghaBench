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
struct elfhdr {int* e_ident; int e_ehsize; int e_type; int e_machine; int e_phentsize; int e_phnum; int e_shentsize; int e_shnum; int e_shstrndx; void* e_shoff; void* e_phoff; void* e_entry; void* e_flags; void* e_version; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
#define  ELFCLASS32 129 
#define  ELFCLASS64 128 
 int ELFDATA2LSB ; 
 int ELFDATA2MSB ; 
 int ELF_CLASS ; 
 int ENOEXEC ; 
 int FUNC0 (struct elfhdr*,int) ; 
 void* FUNC1 (struct elfhdr*,void*) ; 
 void* FUNC2 (struct elfhdr*,void*) ; 
 scalar_t__ FUNC3 (struct elfhdr*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct elfhdr*) ; 
 int /*<<< orphan*/  FUNC5 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct elfhdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(const char *buf, size_t len, struct elfhdr *ehdr)
{
	struct elfhdr *buf_ehdr;

	if (len < sizeof(*buf_ehdr)) {
		FUNC7("Buffer is too small to hold ELF header.\n");
		return -ENOEXEC;
	}

	FUNC6(ehdr, 0, sizeof(*ehdr));
	FUNC5(ehdr->e_ident, buf, sizeof(ehdr->e_ident));
	if (!FUNC4(ehdr)) {
		FUNC7("No ELF header magic.\n");
		return -ENOEXEC;
	}

	if (ehdr->e_ident[EI_CLASS] != ELF_CLASS) {
		FUNC7("Not a supported ELF class.\n");
		return -ENOEXEC;
	} else  if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB &&
		ehdr->e_ident[EI_DATA] != ELFDATA2MSB) {
		FUNC7("Not a supported ELF data format.\n");
		return -ENOEXEC;
	}

	buf_ehdr = (struct elfhdr *) buf;
	if (FUNC0(ehdr, buf_ehdr->e_ehsize) != sizeof(*buf_ehdr)) {
		FUNC7("Bad ELF header size.\n");
		return -ENOEXEC;
	}

	ehdr->e_type      = FUNC0(ehdr, buf_ehdr->e_type);
	ehdr->e_machine   = FUNC0(ehdr, buf_ehdr->e_machine);
	ehdr->e_version   = FUNC1(ehdr, buf_ehdr->e_version);
	ehdr->e_flags     = FUNC1(ehdr, buf_ehdr->e_flags);
	ehdr->e_phentsize = FUNC0(ehdr, buf_ehdr->e_phentsize);
	ehdr->e_phnum     = FUNC0(ehdr, buf_ehdr->e_phnum);
	ehdr->e_shentsize = FUNC0(ehdr, buf_ehdr->e_shentsize);
	ehdr->e_shnum     = FUNC0(ehdr, buf_ehdr->e_shnum);
	ehdr->e_shstrndx  = FUNC0(ehdr, buf_ehdr->e_shstrndx);

	switch (ehdr->e_ident[EI_CLASS]) {
	case ELFCLASS64:
		ehdr->e_entry = FUNC2(ehdr, buf_ehdr->e_entry);
		ehdr->e_phoff = FUNC2(ehdr, buf_ehdr->e_phoff);
		ehdr->e_shoff = FUNC2(ehdr, buf_ehdr->e_shoff);
		break;

	case ELFCLASS32:
		ehdr->e_entry = FUNC1(ehdr, buf_ehdr->e_entry);
		ehdr->e_phoff = FUNC1(ehdr, buf_ehdr->e_phoff);
		ehdr->e_shoff = FUNC1(ehdr, buf_ehdr->e_shoff);
		break;

	default:
		FUNC7("Unknown ELF class.\n");
		return -EINVAL;
	}

	return FUNC3(ehdr, len) ? 0 : -ENOEXEC;
}