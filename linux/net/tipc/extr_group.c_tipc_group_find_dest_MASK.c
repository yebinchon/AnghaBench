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
struct tipc_member {int dummy; } ;
struct tipc_group {int dummy; } ;

/* Variables and functions */
 struct tipc_member* FUNC0 (struct tipc_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tipc_member*) ; 

__attribute__((used)) static struct tipc_member *FUNC2(struct tipc_group *grp,
						u32 node, u32 port)
{
	struct tipc_member *m;

	m = FUNC0(grp, node, port);
	if (m && FUNC1(m))
		return m;
	return NULL;
}