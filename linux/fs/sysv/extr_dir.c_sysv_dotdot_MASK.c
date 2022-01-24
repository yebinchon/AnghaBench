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
struct sysv_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 

struct sysv_dir_entry * FUNC3 (struct inode *dir, struct page **p)
{
	struct page *page = FUNC1(dir, 0);
	struct sysv_dir_entry *de = NULL;

	if (!FUNC0(page)) {
		de = (struct sysv_dir_entry*) FUNC2(page) + 1;
		*p = page;
	}
	return de;
}