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
typedef  int /*<<< orphan*/  uint32_t ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static __be32 FUNC2(struct xdr_stream *xdr, const uint32_t *bitmap, size_t sz)
{
	if (FUNC1(xdr, bitmap, sz) < 0)
		return FUNC0(NFS4ERR_RESOURCE);
	return 0;
}