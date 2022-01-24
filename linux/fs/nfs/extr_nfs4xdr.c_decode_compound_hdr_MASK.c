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
struct compound_hdr {char* tag; int nops; void* status; void* taglen; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, struct compound_hdr *hdr)
{
	__be32 *p;

	p = FUNC4(xdr, 8);
	if (FUNC3(!p))
		return -EIO;
	hdr->status = FUNC1(p++);
	hdr->taglen = FUNC1(p);

	p = FUNC4(xdr, hdr->taglen + 4);
	if (FUNC3(!p))
		return -EIO;
	hdr->tag = (char *)p;
	p += FUNC0(hdr->taglen);
	hdr->nops = FUNC1(p);
	if (FUNC3(hdr->nops < 1))
		return FUNC2(hdr->status);
	return 0;
}