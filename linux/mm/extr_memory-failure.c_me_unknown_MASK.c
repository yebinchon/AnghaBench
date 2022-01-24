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
struct page {int dummy; } ;

/* Variables and functions */
 int MF_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 

__attribute__((used)) static int FUNC1(struct page *p, unsigned long pfn)
{
	FUNC0("Memory failure: %#lx: Unknown page state\n", pfn);
	return MF_FAILED;
}