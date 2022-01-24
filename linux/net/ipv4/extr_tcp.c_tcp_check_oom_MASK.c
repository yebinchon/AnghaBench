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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,int) ; 

bool FUNC3(struct sock *sk, int shift)
{
	bool too_many_orphans, out_of_socket_memory;

	too_many_orphans = FUNC2(sk, shift);
	out_of_socket_memory = FUNC1(sk);

	if (too_many_orphans)
		FUNC0("too many orphaned sockets\n");
	if (out_of_socket_memory)
		FUNC0("out of memory -- consider tuning tcp_mem\n");
	return too_many_orphans || out_of_socket_memory;
}