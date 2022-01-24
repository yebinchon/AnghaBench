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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 scalar_t__ FUNC2 (int,void*) ; 

__attribute__((used)) static inline int FUNC3(int* bit, void* bitmap, int side)
{
	if (FUNC2(*bit + side, bitmap)) {
		FUNC0(*bit, bitmap);
		(*bit) -= side;
		return 1;
	}
	else {
		(*bit) += side;
		FUNC1(*bit, bitmap);
		return -1;
	}
}