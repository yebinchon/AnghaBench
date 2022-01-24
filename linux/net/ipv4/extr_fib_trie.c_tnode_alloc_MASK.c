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
struct tnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 size_t FUNC0 (unsigned long) ; 
 int TNODE_VMALLOC_MAX ; 
 struct tnode* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 struct tnode* FUNC2 (size_t) ; 

__attribute__((used)) static struct tnode *FUNC3(int bits)
{
	size_t size;

	/* verify bits is within bounds */
	if (bits > TNODE_VMALLOC_MAX)
		return NULL;

	/* determine size and verify it is non-zero and didn't overflow */
	size = FUNC0(1ul << bits);

	if (size <= PAGE_SIZE)
		return FUNC1(size, GFP_KERNEL);
	else
		return FUNC2(size);
}