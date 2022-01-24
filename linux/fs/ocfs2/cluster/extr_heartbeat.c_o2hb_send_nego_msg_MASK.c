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
typedef  int /*<<< orphan*/  u8 ;
struct o2hb_nego_msg {int /*<<< orphan*/  node_num; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,struct o2hb_nego_msg*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(int key, int type, u8 target)
{
	struct o2hb_nego_msg msg;
	int status, ret;

	msg.node_num = FUNC2();
again:
	ret = FUNC1(type, key, &msg, sizeof(msg),
			target, &status);

	if (ret == -EAGAIN || ret == -ENOMEM) {
		FUNC0(100);
		goto again;
	}

	return ret;
}