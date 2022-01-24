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
struct fuse_args_pages {int num_pages; struct fuse_writepage_args* pages; } ;
struct TYPE_2__ {scalar_t__ ff; struct fuse_args_pages ap; } ;
struct fuse_writepage_args {TYPE_1__ ia; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_writepage_args) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_writepage_args*) ; 

__attribute__((used)) static void FUNC3(struct fuse_writepage_args *wpa)
{
	struct fuse_args_pages *ap = &wpa->ia.ap;
	int i;

	for (i = 0; i < ap->num_pages; i++)
		FUNC0(ap->pages[i]);

	if (wpa->ia.ff)
		FUNC1(wpa->ia.ff, false, false);

	FUNC2(ap->pages);
	FUNC2(wpa);
}