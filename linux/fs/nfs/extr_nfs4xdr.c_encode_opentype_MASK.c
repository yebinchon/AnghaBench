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
struct nfs_openargs {int open_flags; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_OPEN_CREATE ; 
 int /*<<< orphan*/  NFS4_OPEN_NOCREATE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,struct nfs_openargs const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
	__be32 *p;

	p = FUNC2(xdr, 4);
	switch (arg->open_flags & O_CREAT) {
	case 0:
		*p = FUNC0(NFS4_OPEN_NOCREATE);
		break;
	default:
		*p = FUNC0(NFS4_OPEN_CREATE);
		FUNC1(xdr, arg);
	}
}