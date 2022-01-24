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
struct pnfs_block_deviceaddr {int nr_volumes; int /*<<< orphan*/ * volumes; } ;
struct nfsd4_getdeviceinfo {struct pnfs_block_deviceaddr* gd_device; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,int) ; 

__be32
FUNC4(struct xdr_stream *xdr,
		struct nfsd4_getdeviceinfo *gdp)
{
	struct pnfs_block_deviceaddr *dev = gdp->gd_device;
	int len = sizeof(__be32), ret, i;
	__be32 *p;

	p = FUNC3(xdr, len + sizeof(__be32));
	if (!p)
		return nfserr_resource;

	for (i = 0; i < dev->nr_volumes; i++) {
		ret = FUNC1(xdr, &dev->volumes[i]);
		if (ret < 0)
			return FUNC2(ret);
		len += ret;
	}

	/*
	 * Fill in the overall length and number of volumes at the beginning
	 * of the layout.
	 */
	*p++ = FUNC0(len);
	*p++ = FUNC0(dev->nr_volumes);
	return 0;
}