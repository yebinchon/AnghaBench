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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct knfsd_fh {scalar_t__ fh_size; int /*<<< orphan*/  fh_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NFS4_FHSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct xdr_stream *xdr, const struct knfsd_fh *fh)
{
	u32 length = fh->fh_size;
	__be32 *p;

	FUNC0(length > NFS4_FHSIZE);
	p = FUNC2(xdr, 4 + length);
	FUNC1(p, &fh->fh_base, length);
}