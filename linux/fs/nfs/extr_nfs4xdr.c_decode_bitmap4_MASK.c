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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EIO ; 
 size_t EMSGSIZE ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(struct xdr_stream *xdr, uint32_t *bitmap, size_t sz)
{
	ssize_t ret;

	ret = FUNC1(xdr, bitmap, sz);
	if (FUNC0(ret >= 0))
		return ret;
	if (ret != -EMSGSIZE)
		return -EIO;
	return sz;
}