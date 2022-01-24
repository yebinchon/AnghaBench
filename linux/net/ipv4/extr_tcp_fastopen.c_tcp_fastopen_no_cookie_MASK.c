#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {int sysctl_tcp_fastopen; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {scalar_t__ fastopen_no_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_FASTOPEN_NO_COOKIE ; 
 scalar_t__ FUNC0 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sock const*) ; 
 TYPE_2__* FUNC2 (struct sock const*) ; 

__attribute__((used)) static bool FUNC3(const struct sock *sk,
				   const struct dst_entry *dst,
				   int flag)
{
	return (FUNC1(sk)->ipv4.sysctl_tcp_fastopen & flag) ||
	       FUNC2(sk)->fastopen_no_cookie ||
	       (dst && FUNC0(dst, RTAX_FASTOPEN_NO_COOKIE));
}