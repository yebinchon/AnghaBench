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
struct request_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pktopts; int /*<<< orphan*/  ipv6_opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct request_sock *req)
{
	FUNC1(FUNC0(req)->ipv6_opt);
	FUNC2(FUNC0(req)->pktopts);
}