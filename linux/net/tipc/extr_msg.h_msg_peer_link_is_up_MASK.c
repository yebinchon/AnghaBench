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
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ LINK_PROTOCOL ; 
 scalar_t__ STATE_MSG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 

__attribute__((used)) static inline bool FUNC3(struct tipc_msg *m)
{
	if (FUNC0(FUNC2(m) != LINK_PROTOCOL))
		return true;
	if (FUNC1(m) == STATE_MSG)
		return true;
	return false;
}