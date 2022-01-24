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
struct xdr_stream {int dummy; } ;
struct gssx_cb {int /*<<< orphan*/  application_data; int /*<<< orphan*/  acceptor_address; int /*<<< orphan*/  acceptor_addrtype; int /*<<< orphan*/  initiator_address; int /*<<< orphan*/  initiator_addrtype; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, struct gssx_cb *cb)
{
	__be32 *p;
	int err;

	/* cb->initiator_addrtype */
	p = FUNC2(xdr, 8);
	if (!p)
		return -ENOSPC;
	p = FUNC1(p, cb->initiator_addrtype);

	/* cb->initiator_address */
	err = FUNC0(xdr, &cb->initiator_address);
	if (err)
		return err;

	/* cb->acceptor_addrtype */
	p = FUNC2(xdr, 8);
	if (!p)
		return -ENOSPC;
	p = FUNC1(p, cb->acceptor_addrtype);

	/* cb->acceptor_address */
	err = FUNC0(xdr, &cb->acceptor_address);
	if (err)
		return err;

	/* cb->application_data */
	err = FUNC0(xdr, &cb->application_data);

	return err;
}