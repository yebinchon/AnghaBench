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
typedef  unsigned int uint32_t ;
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 unsigned int FATTR4_WORD0_FILEHANDLE ; 
 int NFS4_FHSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_fh*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC6(struct xdr_stream *xdr, uint32_t *bitmap, struct nfs_fh *fh)
{
	__be32 *p;
	u32 len;

	if (fh != NULL)
		FUNC3(fh, 0, sizeof(*fh));

	if (FUNC4(bitmap[0] & (FATTR4_WORD0_FILEHANDLE - 1U)))
		return -EIO;
	if (FUNC1(bitmap[0] & FATTR4_WORD0_FILEHANDLE)) {
		p = FUNC5(xdr, 4);
		if (FUNC4(!p))
			return -EIO;
		len = FUNC0(p);
		if (len > NFS4_FHSIZE)
			return -EIO;
		p = FUNC5(xdr, len);
		if (FUNC4(!p))
			return -EIO;
		if (fh != NULL) {
			FUNC2(fh->data, p, len);
			fh->size = len;
		}
		bitmap[0] &= ~FATTR4_WORD0_FILEHANDLE;
	}
	return 0;
}