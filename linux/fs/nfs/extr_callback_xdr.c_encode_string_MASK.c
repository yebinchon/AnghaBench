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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,char const*,unsigned int) ; 

__attribute__((used)) static __be32 FUNC3(struct xdr_stream *xdr, unsigned int len, const char *str)
{
	if (FUNC1(FUNC2(xdr, str, len) < 0))
		return FUNC0(NFS4ERR_RESOURCE);
	return 0;
}