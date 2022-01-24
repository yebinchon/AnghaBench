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
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_MAY_SHUTDOWN ; 
 int /*<<< orphan*/  OP_SHUTDOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket*) ; 

__attribute__((used)) static int FUNC1(struct socket *sock, int how)
{
	return FUNC0(OP_SHUTDOWN, AA_MAY_SHUTDOWN, sock);
}