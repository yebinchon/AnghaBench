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
struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
struct fuse_io_priv {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUSE_DIO_CUSE ; 
 int FUSE_DIO_WRITE ; 
 struct fuse_io_priv FUNC0 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_io_priv*,struct iov_iter*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct kiocb *kiocb, struct iov_iter *from)
{
	struct fuse_io_priv io = FUNC0(kiocb);
	loff_t pos = 0;
	/*
	 * No locking or generic_write_checks(), the server is
	 * responsible for locking and sanity checks.
	 */
	return FUNC1(&io, from, &pos,
			      FUSE_DIO_WRITE | FUSE_DIO_CUSE);
}