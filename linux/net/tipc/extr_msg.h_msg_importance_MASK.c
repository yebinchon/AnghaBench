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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 int MSG_BUNDLER ; 
 int MSG_FRAGMENTER ; 
 int TIPC_CRITICAL_IMPORTANCE ; 
 int TIPC_SYSTEM_IMPORTANCE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct tipc_msg*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 

__attribute__((used)) static inline u32 FUNC4(struct tipc_msg *m)
{
	int usr = FUNC3(m);

	if (FUNC0((usr <= TIPC_CRITICAL_IMPORTANCE) && !FUNC2(m)))
		return usr;
	if ((usr == MSG_FRAGMENTER) || (usr == MSG_BUNDLER))
		return FUNC1(m, 9, 0, 0x7);
	return TIPC_SYSTEM_IMPORTANCE;
}