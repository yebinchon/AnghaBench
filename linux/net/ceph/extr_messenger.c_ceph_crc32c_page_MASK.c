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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static u32 FUNC4(u32 crc, struct page *page,
				unsigned int page_offset,
				unsigned int length)
{
	char *kaddr;

	kaddr = FUNC2(page);
	FUNC0(kaddr == NULL);
	crc = FUNC1(crc, kaddr + page_offset, length);
	FUNC3(page);

	return crc;
}