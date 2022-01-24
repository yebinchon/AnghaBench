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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kvec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,struct svc_fh*,struct file*,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__be32 FUNC4(struct svc_rqst *rqstp, struct svc_fh *fhp,
		  struct file *file, loff_t offset,
		  struct kvec *vec, int vlen, unsigned long *count,
		  u32 *eof)
{
	struct iov_iter iter;
	loff_t ppos = offset;
	ssize_t host_err;

	FUNC2(rqstp, fhp, offset, *count);
	FUNC0(&iter, READ, vec, vlen, *count);
	host_err = FUNC3(file, &iter, &ppos, 0);
	return FUNC1(rqstp, fhp, file, offset, count, eof, host_err);
}