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
struct super_block {int dummy; } ;
struct hpfs_dirent {int /*<<< orphan*/  length; scalar_t__ last; } ;
struct dnode {int /*<<< orphan*/  first_free; int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct super_block *s, struct dnode *d,
			   struct hpfs_dirent *de)
{
	if (de->last) {
		FUNC2(s, "attempt to delete last dirent in dnode %08x", FUNC4(d->self));
		return;
	}
	d->first_free = FUNC0(FUNC4(d->first_free) - FUNC3(de->length));
	FUNC5(de, FUNC1(de), FUNC4(d->first_free) + (char *)d - (char *)de);
}