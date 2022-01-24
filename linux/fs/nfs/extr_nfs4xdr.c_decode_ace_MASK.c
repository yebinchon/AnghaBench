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
 int EIO ; 
 int FUNC0 (struct xdr_stream*,unsigned int*,char**) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, void *ace)
{
	__be32 *p;
	unsigned int strlen;
	char *str;

	p = FUNC2(xdr, 12);
	if (FUNC1(!p))
		return -EIO;
	return FUNC0(xdr, &strlen, &str);
}