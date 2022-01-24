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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct page*,struct writeback_control*) ; 

__attribute__((used)) static int FUNC2(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	FUNC0(inode->i_sb);
	return FUNC1(page, wbc);
}