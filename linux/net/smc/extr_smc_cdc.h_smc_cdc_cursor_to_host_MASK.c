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
union smc_host_cursor {scalar_t__ count; scalar_t__ wrap; } ;
union smc_cdc_cursor {int /*<<< orphan*/  wrap; int /*<<< orphan*/  count; } ;
struct smc_connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union smc_host_cursor*,union smc_host_cursor*,struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC3 (union smc_cdc_cursor*,union smc_cdc_cursor*,struct smc_connection*) ; 

__attribute__((used)) static inline void FUNC4(union smc_host_cursor *local,
					  union smc_cdc_cursor *peer,
					  struct smc_connection *conn)
{
	union smc_host_cursor temp, old;
	union smc_cdc_cursor net;

	FUNC2(&old, local, conn);
	FUNC3(&net, peer, conn);
	temp.count = FUNC0(net.count);
	temp.wrap = FUNC1(net.wrap);
	if ((old.wrap > temp.wrap) && temp.wrap)
		return;
	if ((old.wrap == temp.wrap) &&
	    (old.count > temp.count))
		return;
	FUNC2(local, &temp, conn);
}