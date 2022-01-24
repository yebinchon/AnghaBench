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
struct smack_known {int dummy; } ;
struct msg_msg {int dummy; } ;

/* Variables and functions */
 struct smack_known** FUNC0 (struct msg_msg*) ; 
 struct smack_known* FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct msg_msg *msg)
{
	struct smack_known **blob = FUNC0(msg);

	*blob = FUNC1();
	return 0;
}