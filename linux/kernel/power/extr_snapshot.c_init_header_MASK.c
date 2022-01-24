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
struct swsusp_info {int /*<<< orphan*/  size; int /*<<< orphan*/  pages; int /*<<< orphan*/  image_pages; int /*<<< orphan*/  num_physpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct swsusp_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct swsusp_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nr_copy_pages ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct swsusp_info *info)
{
	FUNC2(info, 0, sizeof(struct swsusp_info));
	info->num_physpages = FUNC0();
	info->image_pages = nr_copy_pages;
	info->pages = FUNC3();
	info->size = info->pages;
	info->size <<= PAGE_SHIFT;
	return FUNC1(info);
}