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
struct gssx_cred_element_array {scalar_t__ count; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__* FUNC0 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC1(struct xdr_stream *xdr,
				  struct gssx_cred_element_array *cea)
{
	__be32 *p;

	if (cea->count != 0)
		return -EINVAL;

	p = FUNC0(xdr, 4);
	if (!p)
		return -ENOSPC;
	*p = 0;

	return 0;
}