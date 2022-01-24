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
typedef  scalar_t__ u32 ;
struct rds_sock {scalar_t__ rs_snd_bytes; int /*<<< orphan*/  rs_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  h_len; } ;
struct TYPE_4__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_2__ m_inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_send_queue_empty ; 

__attribute__((used)) static void FUNC4(struct rds_sock *rs, struct rds_message *rm)
{
	u32 len = FUNC2(rm->m_inc.i_hdr.h_len);

	FUNC1(&rs->rs_lock);

	FUNC0(rs->rs_snd_bytes < len);
	rs->rs_snd_bytes -= len;

	if (rs->rs_snd_bytes == 0)
		FUNC3(s_send_queue_empty);
}