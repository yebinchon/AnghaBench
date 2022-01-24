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
struct nfs4_layoutreturn_args {TYPE_2__* ld_private; TYPE_1__* inode; int /*<<< orphan*/  range; int /*<<< orphan*/  layout; } ;
struct nfs4_flexfile_layoutreturn_args {int /*<<< orphan*/ * devinfo; int /*<<< orphan*/  num_dev; int /*<<< orphan*/  errors; int /*<<< orphan*/  num_errors; int /*<<< orphan*/ * pages; } ;
struct nfs4_flexfile_layout {int /*<<< orphan*/  generic_hdr; } ;
struct TYPE_4__ {struct nfs4_flexfile_layoutreturn_args* data; int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FF_LAYOUTRETURN_MAXERR ; 
 struct nfs4_flexfile_layout* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_flexfile_layoutreturn_args*) ; 
 struct nfs4_flexfile_layoutreturn_args* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layoutreturn_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct nfs4_layoutreturn_args *args)
{
	struct nfs4_flexfile_layoutreturn_args *ff_args;
	struct nfs4_flexfile_layout *ff_layout = FUNC1(args->layout);

	ff_args = FUNC7(sizeof(*ff_args), GFP_KERNEL);
	if (!ff_args)
		goto out_nomem;
	ff_args->pages[0] = FUNC3(GFP_KERNEL);
	if (!ff_args->pages[0])
		goto out_nomem_free;

	FUNC2(&ff_args->errors);
	ff_args->num_errors = FUNC4(args->layout,
			&args->range, &ff_args->errors,
			FF_LAYOUTRETURN_MAXERR);

	FUNC8(&args->inode->i_lock);
	ff_args->num_dev = FUNC5(&ff_layout->generic_hdr,
			&ff_args->devinfo[0], FUNC0(ff_args->devinfo));
	FUNC9(&args->inode->i_lock);

	args->ld_private->ops = &layoutreturn_ops;
	args->ld_private->data = ff_args;
	return 0;
out_nomem_free:
	FUNC6(ff_args);
out_nomem:
	return -ENOMEM;
}