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
struct inode {int dummy; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct inode *inode, block_t *p, block_t *q)
{
	unsigned long nr;

	for ( ; p < q ; p++) {
		nr = FUNC0(*p);
		if (nr) {
			*p = 0;
			FUNC1(inode, nr);
		}
	}
}