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
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_FS ; 
 int __GFP_IO ; 
 void* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 () ; 

void *FUNC5(size_t size, gfp_t flags)
{
	void *p;

	if ((flags & (__GFP_IO | __GFP_FS)) == (__GFP_IO | __GFP_FS)) {
		p = FUNC0(size, flags);
	} else if ((flags & (__GFP_IO | __GFP_FS)) == __GFP_IO) {
		unsigned int nofs_flag = FUNC2();
		p = FUNC0(size, GFP_KERNEL);
		FUNC1(nofs_flag);
	} else {
		unsigned int noio_flag = FUNC4();
		p = FUNC0(size, GFP_KERNEL);
		FUNC3(noio_flag);
	}

	return p;
}