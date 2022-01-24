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
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  nfserr_resource ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC3(struct xdr_stream *xdr, u32 id)
{
	char buf[11];
	int len;
	__be32 *p;

	len = FUNC0(buf, "%u", id);
	p = FUNC2(xdr, len + 4);
	if (!p)
		return nfserr_resource;
	p = FUNC1(p, buf, len);
	return 0;
}