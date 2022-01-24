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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct page {int dummy; } ;
struct f2fs_inode {int /*<<< orphan*/  i_name; int /*<<< orphan*/  i_namelen; } ;

/* Variables and functions */
 struct f2fs_inode* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(const struct qstr *name, struct page *ipage)
{
	struct f2fs_inode *ri;

	FUNC2(ipage, NODE, true, true);

	/* copy name info. to this inode page */
	ri = FUNC0(ipage);
	ri->i_namelen = FUNC1(name->len);
	FUNC3(ri->i_name, name->name, name->len);
	FUNC4(ipage);
}