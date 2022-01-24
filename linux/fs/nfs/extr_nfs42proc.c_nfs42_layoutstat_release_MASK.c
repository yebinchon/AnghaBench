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
struct TYPE_6__ {int num_dev; struct nfs42_layoutstat_devinfo* devinfo; int /*<<< orphan*/  inode; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct nfs42_layoutstat_devinfo {TYPE_2__ args; int /*<<< orphan*/  inode; TYPE_3__ ld_private; } ;
struct nfs42_layoutstat_data {TYPE_2__ args; int /*<<< orphan*/  inode; TYPE_3__ ld_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  layout; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* free ) (TYPE_3__*) ;} ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_INO_LAYOUTSTATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs42_layoutstat_devinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(void *calldata)
{
	struct nfs42_layoutstat_data *data = calldata;
	struct nfs42_layoutstat_devinfo *devinfo = data->args.devinfo;
	int i;

	for (i = 0; i < data->args.num_dev; i++) {
		if (devinfo[i].ld_private.ops && devinfo[i].ld_private.ops->free)
			devinfo[i].ld_private.ops->free(&devinfo[i].ld_private);
	}

	FUNC4(FUNC0(data->args.inode)->layout);
	FUNC6();
	FUNC1(NFS_INO_LAYOUTSTATS, &FUNC0(data->args.inode)->flags);
	FUNC5();
	FUNC3(data->inode);
	FUNC2(data->args.devinfo);
	FUNC2(data);
}