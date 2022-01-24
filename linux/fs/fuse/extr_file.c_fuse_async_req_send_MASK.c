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
struct fuse_io_priv {size_t size; int /*<<< orphan*/  lock; int /*<<< orphan*/  reqs; int /*<<< orphan*/  refcnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  end; } ;
struct TYPE_3__ {TYPE_2__ args; } ;
struct fuse_io_args {TYPE_1__ ap; struct fuse_io_priv* io; } ;
struct fuse_conn {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fuse_aio_complete_req ; 
 size_t FUNC0 (struct fuse_conn*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct fuse_conn *fc,
				   struct fuse_io_args *ia, size_t num_bytes)
{
	ssize_t err;
	struct fuse_io_priv *io = ia->io;

	FUNC2(&io->lock);
	FUNC1(&io->refcnt);
	io->size += num_bytes;
	io->reqs++;
	FUNC3(&io->lock);

	ia->ap.args.end = fuse_aio_complete_req;
	err = FUNC0(fc, &ia->ap.args, GFP_KERNEL);

	return err ?: num_bytes;
}