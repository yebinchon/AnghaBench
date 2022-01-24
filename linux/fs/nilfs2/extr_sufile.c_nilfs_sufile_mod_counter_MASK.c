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
typedef  int /*<<< orphan*/  u64 ;
struct nilfs_sufile_header {int /*<<< orphan*/  sh_ndirtysegs; int /*<<< orphan*/  sh_ncleansegs; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC5(struct buffer_head *header_bh,
				     u64 ncleanadd, u64 ndirtyadd)
{
	struct nilfs_sufile_header *header;
	void *kaddr;

	kaddr = FUNC1(header_bh->b_page);
	header = kaddr + FUNC0(header_bh);
	FUNC3(&header->sh_ncleansegs, ncleanadd);
	FUNC3(&header->sh_ndirtysegs, ndirtyadd);
	FUNC2(kaddr);

	FUNC4(header_bh);
}