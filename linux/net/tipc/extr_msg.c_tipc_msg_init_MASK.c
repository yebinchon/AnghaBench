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
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHORT_H_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 

void FUNC9(u32 own_node, struct tipc_msg *m, u32 user, u32 type,
		   u32 hsize, u32 dnode)
{
	FUNC0(m, 0, hsize);
	FUNC8(m);
	FUNC7(m, user);
	FUNC2(m, hsize);
	FUNC5(m, hsize);
	FUNC4(m, own_node);
	FUNC6(m, type);
	if (hsize > SHORT_H_SIZE) {
		FUNC3(m, own_node);
		FUNC1(m, dnode);
	}
}