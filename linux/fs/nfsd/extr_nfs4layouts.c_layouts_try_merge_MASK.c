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
struct nfsd4_layout_seg {scalar_t__ iomode; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfsd4_layout_seg*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_layout_seg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC4(struct nfsd4_layout_seg *lo, struct nfsd4_layout_seg *new)
{
	if (lo->iomode != new->iomode)
		return false;
	if (FUNC0(new) < lo->offset)
		return false;
	if (FUNC0(lo) < new->offset)
		return false;

	lo->offset = FUNC3(lo->offset, new->offset);
	FUNC1(lo, FUNC2(FUNC0(lo), FUNC0(new)));
	return true;
}