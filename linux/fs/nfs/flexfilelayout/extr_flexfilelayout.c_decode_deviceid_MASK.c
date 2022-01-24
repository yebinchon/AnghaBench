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
struct nfs4_deviceid {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  NFS4_DEVICEID4_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nfs4_deviceid*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_deviceid*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, struct nfs4_deviceid *devid)
{
	__be32 *p;

	p = FUNC3(xdr, NFS4_DEVICEID4_SIZE);
	if (FUNC2(!p))
		return -ENOBUFS;
	FUNC0(devid, p, NFS4_DEVICEID4_SIZE);
	FUNC1(devid);
	return 0;
}