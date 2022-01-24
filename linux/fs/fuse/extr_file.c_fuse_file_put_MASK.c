#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fuse_file {TYPE_2__* fc; TYPE_1__* release_args; int /*<<< orphan*/  count; } ;
struct fuse_args {int /*<<< orphan*/  (* end ) (TYPE_2__*,struct fuse_args*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {scalar_t__ no_open; scalar_t__ no_opendir; } ;
struct TYPE_5__ {struct fuse_args args; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int GFP_KERNEL ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct fuse_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct fuse_args*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct fuse_args*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fuse_file *ff, bool sync, bool isdir)
{
	if (FUNC4(&ff->count)) {
		struct fuse_args *args = &ff->release_args->args;

		if (isdir ? ff->fc->no_opendir : ff->fc->no_open) {
			/* Do nothing when client does not implement 'open' */
			FUNC0(ff->fc, args, 0);
		} else if (sync) {
			FUNC2(ff->fc, args);
			FUNC0(ff->fc, args, 0);
		} else {
			args->end = fuse_release_end;
			if (FUNC1(ff->fc, args,
						   GFP_KERNEL | __GFP_NOFAIL))
				FUNC0(ff->fc, args, -ENOTCONN);
		}
		FUNC3(ff);
	}
}