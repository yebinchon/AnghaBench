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
struct sock {int dummy; } ;

/* Variables and functions */
 unsigned int TCP_RTO_MAX ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct sock *sk,
				      unsigned int boundary,
				      unsigned int rto_base)
{
	unsigned int linear_backoff_thresh, timeout;

	linear_backoff_thresh = FUNC0(TCP_RTO_MAX / rto_base);
	if (boundary <= linear_backoff_thresh)
		timeout = ((2 << boundary) - 1) * rto_base;
	else
		timeout = ((2 << linear_backoff_thresh) - 1) * rto_base +
			(boundary - linear_backoff_thresh) * TCP_RTO_MAX;
	return FUNC1(timeout);
}