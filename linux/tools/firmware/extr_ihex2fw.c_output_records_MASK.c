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
typedef  scalar_t__ uint16_t ;
struct ihex_binrec {unsigned char addr; struct ihex_binrec* next; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ihex_binrec*) ; 
 struct ihex_binrec* records ; 
 int FUNC4 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(int outfd)
{
	unsigned char zeroes[6] = {0, 0, 0, 0, 0, 0};
	struct ihex_binrec *p = records;

	while (p) {
		uint16_t writelen = FUNC0(FUNC3(p), 4);

		p->addr = FUNC1(p->addr);
		p->len = FUNC2(p->len);
		if (FUNC4(outfd, &p->addr, writelen) != writelen)
			return 1;
		p = p->next;
	}
	/* EOF record is zero length, since we don't bother to represent
	   the type field in the binary version */
	if (FUNC4(outfd, zeroes, 6) != 6)
		return 1;
	return 0;
}