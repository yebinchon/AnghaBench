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
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msghdr*) ; 
 int FUNC1 (struct socket*,struct msghdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct socket*,struct msghdr*,int) ; 

int FUNC3(struct socket *sock, struct msghdr *msg, int flags)
{
	int err = FUNC1(sock, msg, FUNC0(msg), flags);

	return err ?: FUNC2(sock, msg, flags);
}