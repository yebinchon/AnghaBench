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
struct the_nilfs {unsigned int ns_inode_size; scalar_t__ ns_blocksize; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_nongc_ctime; } ;
struct nilfs_super_root {scalar_t__ sr_flags; int /*<<< orphan*/  sr_nongc_ctime; int /*<<< orphan*/  sr_bytes; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_seg_ctime; int /*<<< orphan*/  sc_segbufs; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {struct buffer_head* sb_super_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC10(struct nilfs_sc_info *sci,
					     struct the_nilfs *nilfs)
{
	struct buffer_head *bh_sr;
	struct nilfs_super_root *raw_sr;
	unsigned int isz, srsz;

	bh_sr = FUNC0(&sci->sc_segbufs)->sb_super_root;
	raw_sr = (struct nilfs_super_root *)bh_sr->b_data;
	isz = nilfs->ns_inode_size;
	srsz = FUNC1(isz);

	raw_sr->sr_bytes = FUNC5(srsz);
	raw_sr->sr_nongc_ctime
		= FUNC6(FUNC8() ?
			      nilfs->ns_nongc_ctime : sci->sc_seg_ctime);
	raw_sr->sr_flags = 0;

	FUNC9(nilfs->ns_dat, (void *)raw_sr +
				 FUNC3(isz), 1);
	FUNC9(nilfs->ns_cpfile, (void *)raw_sr +
				 FUNC2(isz), 1);
	FUNC9(nilfs->ns_sufile, (void *)raw_sr +
				 FUNC4(isz), 1);
	FUNC7((void *)raw_sr + srsz, 0, nilfs->ns_blocksize - srsz);
}