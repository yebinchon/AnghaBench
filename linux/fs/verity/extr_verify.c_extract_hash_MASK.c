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
typedef  int /*<<< orphan*/  u8 ;
struct page {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct page *hpage, unsigned int hoffset,
			 unsigned int hsize, u8 *out)
{
	void *virt = FUNC0(hpage);

	FUNC2(out, virt + hoffset, hsize);
	FUNC1(virt);
}