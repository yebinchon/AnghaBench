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
struct fuse_copy_state {unsigned int len; int offset; scalar_t__ write; int /*<<< orphan*/  pg; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct fuse_copy_state *cs, void **val, unsigned *size)
{
	unsigned ncpy = FUNC3(*size, cs->len);
	if (val) {
		void *pgaddr = FUNC0(cs->pg);
		void *buf = pgaddr + cs->offset;

		if (cs->write)
			FUNC2(buf, *val, ncpy);
		else
			FUNC2(*val, buf, ncpy);

		FUNC1(pgaddr);
		*val += ncpy;
	}
	*size -= ncpy;
	cs->len -= ncpy;
	cs->offset += ncpy;
	return ncpy;
}