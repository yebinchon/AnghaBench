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
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  ncleansegs; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct nilfs_segment_usage*) ; 
 scalar_t__ FUNC6 (struct nilfs_segment_usage*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC8 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,int,int /*<<< orphan*/ ) ; 

void FUNC10(struct inode *sufile, __u64 segnum,
			       struct buffer_head *header_bh,
			       struct buffer_head *su_bh)
{
	struct nilfs_segment_usage *su;
	void *kaddr;
	int suclean;

	kaddr = FUNC1(su_bh->b_page);
	su = FUNC8(sufile, segnum, su_bh, kaddr);
	if (FUNC6(su)) {
		FUNC2(kaddr);
		return;
	}
	suclean = FUNC5(su);
	FUNC7(su);
	FUNC2(kaddr);

	if (suclean) {
		FUNC9(header_bh, -1, 0);
		FUNC0(sufile)->ncleansegs--;
	}
	FUNC3(su_bh);
	FUNC4(sufile);
}