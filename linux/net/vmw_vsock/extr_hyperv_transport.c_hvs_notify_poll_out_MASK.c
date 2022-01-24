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
struct vsock_sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vsock_sock*) ; 

__attribute__((used)) static
int FUNC1(struct vsock_sock *vsk, size_t target, bool *writable)
{
	*writable = FUNC0(vsk) > 0;

	return 0;
}