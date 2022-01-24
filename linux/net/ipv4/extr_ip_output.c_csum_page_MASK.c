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
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static inline __wsum
FUNC3(struct page *page, int offset, int copy)
{
	char *kaddr;
	__wsum csum;
	kaddr = FUNC1(page);
	csum = FUNC0(kaddr + offset, copy, 0);
	FUNC2(page);
	return csum;
}