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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int FGP_CREAT ; 
 int FGP_LOCK ; 
 int FGP_NOFS ; 
 int FGP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 struct page* FUNC1 (struct address_space*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

struct page *FUNC3(struct address_space *mapping,
					pgoff_t index, unsigned flags)
{
	struct page *page;
	int fgp_flags = FGP_LOCK|FGP_WRITE|FGP_CREAT;

	if (flags & AOP_FLAG_NOFS)
		fgp_flags |= FGP_NOFS;

	page = FUNC1(mapping, index, fgp_flags,
			FUNC0(mapping));
	if (page)
		FUNC2(page);

	return page;
}