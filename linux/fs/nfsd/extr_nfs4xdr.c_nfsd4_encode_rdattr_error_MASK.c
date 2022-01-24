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
 int FATTR4_WORD0_RDATTR_ERROR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 *
FUNC2(struct xdr_stream *xdr, __be32 nfserr)
{
	__be32 *p;

	p = FUNC1(xdr, 20);
	if (!p)
		return NULL;
	*p++ = FUNC0(2);
	*p++ = FUNC0(FATTR4_WORD0_RDATTR_ERROR); /* bmval0 */
	*p++ = FUNC0(0);			 /* bmval1 */

	*p++ = FUNC0(4);     /* attribute length */
	*p++ = nfserr;       /* no htonl */
	return p;
}