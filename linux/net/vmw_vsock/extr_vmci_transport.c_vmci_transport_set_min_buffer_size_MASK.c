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
typedef  scalar_t__ u64 ;
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ queue_pair_size; scalar_t__ queue_pair_min_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct vsock_sock*) ; 

__attribute__((used)) static void FUNC1(struct vsock_sock *vsk,
					       u64 val)
{
	if (val > FUNC0(vsk)->queue_pair_size)
		FUNC0(vsk)->queue_pair_size = val;
	FUNC0(vsk)->queue_pair_min_size = val;
}