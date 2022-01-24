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
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct vsock_sock*) ; 

__attribute__((used)) static bool FUNC2(struct vsock_sock *vsk)
{
	return !FUNC0(FUNC1(vsk)->qp_handle);
}