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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p9_fd_trans ; 
 int /*<<< orphan*/  p9_poll_work ; 
 int /*<<< orphan*/  p9_tcp_trans ; 
 int /*<<< orphan*/  p9_unix_trans ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	FUNC0(&p9_poll_work);
	FUNC1(&p9_tcp_trans);
	FUNC1(&p9_unix_trans);
	FUNC1(&p9_fd_trans);
}