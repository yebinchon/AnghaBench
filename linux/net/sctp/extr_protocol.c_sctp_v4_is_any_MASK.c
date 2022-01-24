#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const union sctp_addr *addr)
{
	return FUNC0(INADDR_ANY) == addr->v4.sin_addr.s_addr;
}