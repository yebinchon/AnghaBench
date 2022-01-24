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
struct auxtrace_mmap_params {unsigned int len; int mask; int prot; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ page_size ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(struct auxtrace_mmap_params *mp,
				off_t auxtrace_offset,
				unsigned int auxtrace_pages,
				bool auxtrace_overwrite)
{
	if (auxtrace_pages) {
		mp->offset = auxtrace_offset;
		mp->len = auxtrace_pages * (size_t)page_size;
		mp->mask = FUNC0(mp->len) ? mp->len - 1 : 0;
		mp->prot = PROT_READ | (auxtrace_overwrite ? 0 : PROT_WRITE);
		FUNC1("AUX area mmap length %zu\n", mp->len);
	} else {
		mp->len = 0;
	}
}