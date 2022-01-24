#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FMODE_READ ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct file *file, struct page *page,
			loff_t pos, unsigned int len)
{
	/*
	 * Up-to-date pages, those with ongoing or full-page write
	 * don't need read/modify/write
	 */
	if (FUNC1(page) || FUNC0(page) ||
	    FUNC2(page, pos, len))
		return false;

	if (FUNC3(file->f_mapping->host))
		return true;
	/* Open for reading too? */
	if (file->f_mode & FMODE_READ)
		return true;
	return false;
}