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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  addr4 ; 
 int /*<<< orphan*/  cfg_port ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct sockaddr_in addr = {0};

	addr.sin_family = AF_INET;
	addr.sin_port = FUNC0(cfg_port);
	addr.sin_addr = addr4;

	FUNC1((void *)&addr, sizeof(addr), false /* !ipv6 */);
}