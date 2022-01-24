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
struct net_device {int dummy; } ;
struct listen_struct {struct net_device* dev; int /*<<< orphan*/  callsign; struct listen_struct* next; } ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct listen_struct* listen_list ; 
 int /*<<< orphan*/  listen_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(ax25_address *callsign, struct net_device *dev)
{
	struct listen_struct *listen;

	FUNC1(&listen_lock);
	for (listen = listen_list; listen != NULL; listen = listen->next)
		if (FUNC0(&listen->callsign, callsign) == 0 &&
		    (listen->dev == dev || listen->dev == NULL)) {
			FUNC2(&listen_lock);
			return 1;
	}
	FUNC2(&listen_lock);

	return 0;
}