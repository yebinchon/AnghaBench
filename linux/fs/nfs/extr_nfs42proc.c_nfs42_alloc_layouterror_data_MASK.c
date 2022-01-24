#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_segment {TYPE_1__* pls_layout; } ;
struct TYPE_4__ {scalar_t__ inode; } ;
struct nfs42_layouterror_data {scalar_t__ inode; scalar_t__ lseg; TYPE_2__ args; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct inode* plh_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs42_layouterror_data*) ; 
 struct nfs42_layouterror_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct pnfs_layout_segment*) ; 

__attribute__((used)) static struct nfs42_layouterror_data *
FUNC5(struct pnfs_layout_segment *lseg, gfp_t gfp_flags)
{
	struct nfs42_layouterror_data *data;
	struct inode *inode = lseg->pls_layout->plh_inode;

	data = FUNC1(sizeof(*data), gfp_flags);
	if (data) {
		data->args.inode = data->inode = FUNC2(inode);
		if (data->inode) {
			data->lseg = FUNC4(lseg);
			if (data->lseg)
				return data;
			FUNC3(data->inode);
		}
		FUNC0(data);
	}
	return NULL;
}