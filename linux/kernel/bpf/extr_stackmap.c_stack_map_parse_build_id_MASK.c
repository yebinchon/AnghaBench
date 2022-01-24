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
struct TYPE_2__ {scalar_t__ n_type; int n_namesz; int n_descsz; } ;
typedef  int Elf32_Word ;
typedef  TYPE_1__ Elf32_Nhdr ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ BPF_BUILD_ID ; 
 int BPF_BUILD_ID_SIZE ; 
 int EINVAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(void *page_addr,
					   unsigned char *build_id,
					   void *note_start,
					   Elf32_Word note_size)
{
	Elf32_Word note_offs = 0, new_offs;

	/* check for overflow */
	if (note_start < page_addr || note_start + note_size < note_start)
		return -EINVAL;

	/* only supports note that fits in the first page */
	if (note_start + note_size > page_addr + PAGE_SIZE)
		return -EINVAL;

	while (note_offs + sizeof(Elf32_Nhdr) < note_size) {
		Elf32_Nhdr *nhdr = (Elf32_Nhdr *)(note_start + note_offs);

		if (nhdr->n_type == BPF_BUILD_ID &&
		    nhdr->n_namesz == sizeof("GNU") &&
		    nhdr->n_descsz > 0 &&
		    nhdr->n_descsz <= BPF_BUILD_ID_SIZE) {
			FUNC1(build_id,
			       note_start + note_offs +
			       FUNC0(sizeof("GNU"), 4) + sizeof(Elf32_Nhdr),
			       nhdr->n_descsz);
			FUNC2(build_id + nhdr->n_descsz, 0,
			       BPF_BUILD_ID_SIZE - nhdr->n_descsz);
			return 0;
		}
		new_offs = note_offs + sizeof(Elf32_Nhdr) +
			FUNC0(nhdr->n_namesz, 4) + FUNC0(nhdr->n_descsz, 4);
		if (new_offs <= note_offs)  /* overflow */
			break;
		note_offs = new_offs;
	}
	return -EINVAL;
}