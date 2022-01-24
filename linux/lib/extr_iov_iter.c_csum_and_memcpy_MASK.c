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
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void const*,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __wsum FUNC2(void *to, const void *from, size_t len,
			      __wsum sum, size_t off)
{
	__wsum next = FUNC1(from, to, len, 0);
	return FUNC0(sum, next, off);
}