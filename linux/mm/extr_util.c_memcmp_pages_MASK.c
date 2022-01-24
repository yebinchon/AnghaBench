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
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct page *page1, struct page *page2)
{
	char *addr1, *addr2;
	int ret;

	addr1 = FUNC0(page1);
	addr2 = FUNC0(page2);
	ret = FUNC2(addr1, addr2, PAGE_SIZE);
	FUNC1(addr2);
	FUNC1(addr1);
	return ret;
}