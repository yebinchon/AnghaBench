#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct TYPE_5__ {int /*<<< orphan*/  i_used; } ;
struct TYPE_6__ {TYPE_1__ bitmap1; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_chain; } ;
struct ocfs2_dinode {TYPE_2__ id1; TYPE_4__ id2; } ;
struct ocfs2_chain_list {TYPE_3__* cl_recs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  c_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct inode *inode,
				       struct buffer_head *di_bh,
				       u32 num_bits,
				       u16 chain)
{
	u32 tmp_used;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;
	struct ocfs2_chain_list *cl;

	cl = (struct ocfs2_chain_list *)&di->id2.i_chain;
	tmp_used = FUNC2(di->id1.bitmap1.i_used);
	di->id1.bitmap1.i_used = FUNC0(tmp_used - num_bits);
	FUNC1(&cl->cl_recs[chain].c_free, num_bits);
}