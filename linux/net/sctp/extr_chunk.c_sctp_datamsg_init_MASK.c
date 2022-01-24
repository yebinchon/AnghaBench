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
struct sctp_datamsg {int can_delay; int /*<<< orphan*/  chunks; scalar_t__ expires_at; scalar_t__ abandoned; scalar_t__ send_error; scalar_t__ send_failed; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct sctp_datamsg *msg)
{
	FUNC1(&msg->refcnt, 1);
	msg->send_failed = 0;
	msg->send_error = 0;
	msg->can_delay = 1;
	msg->abandoned = 0;
	msg->expires_at = 0;
	FUNC0(&msg->chunks);
}