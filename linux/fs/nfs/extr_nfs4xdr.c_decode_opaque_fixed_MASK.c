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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,void*,size_t) ; 

__attribute__((used)) static int FUNC2(struct xdr_stream *xdr, void *buf, size_t len)
{
	ssize_t ret = FUNC1(xdr, buf, len);
	if (FUNC0(ret < 0))
		return -EIO;
	return 0;
}