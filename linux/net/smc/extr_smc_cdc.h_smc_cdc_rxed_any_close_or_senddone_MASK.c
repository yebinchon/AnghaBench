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
struct TYPE_3__ {scalar_t__ peer_done_writing; } ;
struct TYPE_4__ {TYPE_1__ conn_state_flags; } ;
struct smc_connection {TYPE_2__ local_rx_ctrl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct smc_connection*) ; 

__attribute__((used)) static inline bool FUNC1(
	struct smc_connection *conn)
{
	return FUNC0(conn) ||
	       conn->local_rx_ctrl.conn_state_flags.peer_done_writing;
}