#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct buffer_ext {int dummy; } ;
struct TYPE_6__ {int d_align; long long d_off; void* d_version; void* d_size; void* d_type; void* d_buf; } ;
struct TYPE_5__ {int sh_name; scalar_t__ sh_entsize; scalar_t__ sh_flags; scalar_t__ sh_addr; void* sh_type; } ;
typedef  TYPE_1__ Elf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_WRITE ; 
 void* ELF_T_BYTE ; 
 void* EV_CURRENT ; 
 void* SHT_PROGBITS ; 
 void* FUNC0 (struct buffer_ext*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_ext*) ; 
 void* FUNC2 (struct buffer_ext*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,int,struct buffer_ext*,struct buffer_ext*,struct buffer_ext*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(Elf *e, uint64_t code_addr, void *debug, int nr_debug_entries)
{
	Elf_Data *d;
	Elf_Scn *scn;
	Elf_Shdr *shdr;
	struct buffer_ext dl, di, da;
	int ret;

	FUNC1(&dl);
	FUNC1(&di);
	FUNC1(&da);

	ret = FUNC7(code_addr, debug, nr_debug_entries, &dl, &da, &di);
	if (ret)
		return -1;
	/*
	 * setup .debug_line section
	 */
	scn = FUNC5(e);
	if (!scn) {
		FUNC8("cannot create section");
		return -1;
	}

	d = FUNC4(scn);
	if (!d) {
		FUNC8("cannot get new data");
		return -1;
	}

	d->d_align = 1;
	d->d_off = 0LL;
	d->d_buf = FUNC0(&dl);
	d->d_type = ELF_T_BYTE;
	d->d_size = FUNC2(&dl);
	d->d_version = EV_CURRENT;

	shdr = FUNC3(scn);
	if (!shdr) {
		FUNC8("cannot get section header");
		return -1;
	}

	shdr->sh_name = 52; /* .debug_line */
	shdr->sh_type = SHT_PROGBITS;
	shdr->sh_addr = 0; /* must be zero or == sh_offset -> dynamic object */
	shdr->sh_flags = 0;
	shdr->sh_entsize = 0;

	/*
	 * setup .debug_info section
	 */
	scn = FUNC5(e);
	if (!scn) {
		FUNC8("cannot create section");
		return -1;
	}

	d = FUNC4(scn);
	if (!d) {
		FUNC8("cannot get new data");
		return -1;
	}

	d->d_align = 1;
	d->d_off = 0LL;
	d->d_buf = FUNC0(&di);
	d->d_type = ELF_T_BYTE;
	d->d_size = FUNC2(&di);
	d->d_version = EV_CURRENT;

	shdr = FUNC3(scn);
	if (!shdr) {
		FUNC8("cannot get section header");
		return -1;
	}

	shdr->sh_name = 64; /* .debug_info */
	shdr->sh_type = SHT_PROGBITS;
	shdr->sh_addr = 0; /* must be zero or == sh_offset -> dynamic object */
	shdr->sh_flags = 0;
	shdr->sh_entsize = 0;

	/*
	 * setup .debug_abbrev section
	 */
	scn = FUNC5(e);
	if (!scn) {
		FUNC8("cannot create section");
		return -1;
	}

	d = FUNC4(scn);
	if (!d) {
		FUNC8("cannot get new data");
		return -1;
	}

	d->d_align = 1;
	d->d_off = 0LL;
	d->d_buf = FUNC0(&da);
	d->d_type = ELF_T_BYTE;
	d->d_size = FUNC2(&da);
	d->d_version = EV_CURRENT;

	shdr = FUNC3(scn);
	if (!shdr) {
		FUNC8("cannot get section header");
		return -1;
	}

	shdr->sh_name = 76; /* .debug_info */
	shdr->sh_type = SHT_PROGBITS;
	shdr->sh_addr = 0; /* must be zero or == sh_offset -> dynamic object */
	shdr->sh_flags = 0;
	shdr->sh_entsize = 0;

	/*
	 * now we update the ELF image with all the sections
	 */
	if (FUNC6(e, ELF_C_WRITE) < 0) {
		FUNC8("elf_update debug failed");
		return -1;
	}
	return 0;
}