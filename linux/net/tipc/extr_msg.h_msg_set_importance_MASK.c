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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 int MSG_BUNDLER ; 
 int MSG_FRAGMENTER ; 
 scalar_t__ TIPC_SYSTEM_IMPORTANCE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,scalar_t__) ; 
 int FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static inline void FUNC5(struct tipc_msg *m, u32 i)
{
	int usr = FUNC3(m);

	if (FUNC0((usr == MSG_FRAGMENTER) || (usr == MSG_BUNDLER)))
		FUNC1(m, 9, 0, 0x7, i);
	else if (i < TIPC_SYSTEM_IMPORTANCE)
		FUNC2(m, i);
	else
		FUNC4("Trying to set illegal importance in message\n");
}