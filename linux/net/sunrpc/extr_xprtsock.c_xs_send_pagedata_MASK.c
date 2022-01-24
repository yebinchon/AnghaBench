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
struct xdr_buf {scalar_t__ page_base; scalar_t__ page_len; int /*<<< orphan*/  bvec; } ;
struct socket {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct xdr_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_buf*) ; 
 int FUNC3 (struct socket*,struct msghdr*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct msghdr *msg, struct xdr_buf *xdr, size_t base)
{
	int err;

	err = FUNC1(xdr, GFP_KERNEL);
	if (err < 0)
		return err;

	FUNC0(&msg->msg_iter, WRITE, xdr->bvec,
			FUNC2(xdr),
			xdr->page_len + xdr->page_base);
	return FUNC3(sock, msg, base + xdr->page_base);
}