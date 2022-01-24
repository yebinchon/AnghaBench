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
typedef  scalar_t__ uint64_t ;
struct reserve_info {int dummy; } ;
struct inbuf {int dummy; } ;
struct fdt_reserve_entry {int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  re ;

/* Variables and functions */
 struct reserve_info* FUNC0 (struct reserve_info*,struct reserve_info*) ; 
 struct reserve_info* FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inbuf*,struct fdt_reserve_entry*,int) ; 

__attribute__((used)) static struct reserve_info *FUNC4(struct inbuf *inb)
{
	struct reserve_info *reservelist = NULL;
	struct reserve_info *new;
	struct fdt_reserve_entry re;

	/*
	 * Each entry is a pair of u64 (addr, size) values for 4 cell_t's.
	 * List terminates at an entry with size equal to zero.
	 *
	 * First pass, count entries.
	 */
	while (1) {
		uint64_t address, size;

		FUNC3(inb, &re, sizeof(re));
		address  = FUNC2(re.address);
		size = FUNC2(re.size);
		if (size == 0)
			break;

		new = FUNC1(address, size);
		reservelist = FUNC0(reservelist, new);
	}

	return reservelist;
}