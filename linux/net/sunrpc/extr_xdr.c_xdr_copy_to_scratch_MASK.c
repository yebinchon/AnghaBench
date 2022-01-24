#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* iov_base; size_t iov_len; } ;
struct xdr_stream {TYPE_1__ scratch; scalar_t__ p; scalar_t__ end; } ;
typedef  char __be32 ;

/* Variables and functions */
 char* FUNC0 (struct xdr_stream*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*) ; 

__attribute__((used)) static __be32 *FUNC4(struct xdr_stream *xdr, size_t nbytes)
{
	__be32 *p;
	char *cpdest = xdr->scratch.iov_base;
	size_t cplen = (char *)xdr->end - (char *)xdr->p;

	if (nbytes > xdr->scratch.iov_len)
		goto out_overflow;
	p = FUNC0(xdr, cplen);
	if (p == NULL)
		return NULL;
	FUNC1(cpdest, p, cplen);
	if (!FUNC3(xdr))
		goto out_overflow;
	cpdest += cplen;
	nbytes -= cplen;
	p = FUNC0(xdr, nbytes);
	if (p == NULL)
		return NULL;
	FUNC1(cpdest, p, nbytes);
	return xdr->scratch.iov_base;
out_overflow:
	FUNC2(xdr, nbytes);
	return NULL;
}