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
typedef  int /*<<< orphan*/  u32 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct aa_label*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct aa_label *label, const char *op, u32 request,
		      struct socket *sock)
{
	FUNC0(!label);
	FUNC0(!sock);
	FUNC0(!sock->sk);

	return FUNC1(label, op, request, sock->sk);
}