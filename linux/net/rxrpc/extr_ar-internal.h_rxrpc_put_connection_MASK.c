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
struct rxrpc_connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_connection*) ; 

__attribute__((used)) static inline void FUNC3(struct rxrpc_connection *conn)
{
	if (!conn)
		return;

	if (FUNC0(conn))
		FUNC1(conn);
	else
		FUNC2(conn);
}