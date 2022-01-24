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
typedef  int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_openres {scalar_t__ delegation_type; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
#define  NFS4_OPEN_DELEGATE_NONE 131 
#define  NFS4_OPEN_DELEGATE_NONE_EXT 130 
#define  NFS4_OPEN_DELEGATE_READ 129 
#define  NFS4_OPEN_DELEGATE_WRITE 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,struct nfs_openres*) ; 
 int FUNC2 (struct xdr_stream*,int,struct nfs_openres*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct nfs_openres *res)
{
	__be32 *p;
	uint32_t delegation_type;

	p = FUNC4(xdr, 4);
	if (FUNC3(!p))
		return -EIO;
	delegation_type = FUNC0(p);
	res->delegation_type = 0;
	switch (delegation_type) {
	case NFS4_OPEN_DELEGATE_NONE:
		return 0;
	case NFS4_OPEN_DELEGATE_READ:
	case NFS4_OPEN_DELEGATE_WRITE:
		return FUNC2(xdr, delegation_type, res);
	case NFS4_OPEN_DELEGATE_NONE_EXT:
		return FUNC1(xdr, res);
	}
	return -EIO;
}