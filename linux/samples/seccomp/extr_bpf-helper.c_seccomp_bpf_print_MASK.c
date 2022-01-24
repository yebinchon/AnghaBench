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
struct sock_filter {int code; int jt; int jf; int k; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 

void FUNC1(struct sock_filter *filter, size_t count)
{
	struct sock_filter *end = filter + count;
	for ( ; filter < end; ++filter)
		FUNC0("{ code=%u,jt=%u,jf=%u,k=%u },\n",
			filter->code, filter->jt, filter->jf, filter->k);
}