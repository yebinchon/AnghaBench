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
typedef  unsigned int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct xdr_stream*,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, unsigned int *len, char **string)
{
	ssize_t ret = FUNC1(xdr, (void **)string,
			NFS4_OPAQUE_LIMIT);
	if (FUNC0(ret < 0))
		return -EIO;
	*len = ret;
	return 0;
}