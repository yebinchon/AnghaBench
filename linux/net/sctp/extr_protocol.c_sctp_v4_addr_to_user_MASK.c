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
struct TYPE_2__ {int /*<<< orphan*/  sin_zero; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct sockaddr_in {int dummy; } ;
struct sctp_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct sctp_sock *sp, union sctp_addr *addr)
{
	/* No address mapping for V4 sockets */
	FUNC0(addr->v4.sin_zero, 0, sizeof(addr->v4.sin_zero));
	return sizeof(struct sockaddr_in);
}