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
struct sock_diag_handler {int family; } ;

/* Variables and functions */
 int AF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sock_diag_handler const** sock_diag_handlers ; 
 int /*<<< orphan*/  sock_diag_table_mutex ; 

void FUNC3(const struct sock_diag_handler *hnld)
{
	int family = hnld->family;

	if (family >= AF_MAX)
		return;

	FUNC1(&sock_diag_table_mutex);
	FUNC0(sock_diag_handlers[family] != hnld);
	sock_diag_handlers[family] = NULL;
	FUNC2(&sock_diag_table_mutex);
}