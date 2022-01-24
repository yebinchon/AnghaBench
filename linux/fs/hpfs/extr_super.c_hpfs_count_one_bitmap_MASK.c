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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  secno ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 unsigned int FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct quad_buffer_head*) ; 
 unsigned long* FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct quad_buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC3(struct super_block *s, secno secno)
{
	struct quad_buffer_head qbh;
	unsigned long *bits;
	unsigned count;

	bits = FUNC2(s, secno, &qbh, 0);
	if (!bits)
		return (unsigned)-1;
	count = FUNC0(bits, 2048 * BITS_PER_BYTE);
	FUNC1(&qbh);
	return count;
}