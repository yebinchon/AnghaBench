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
struct listen_struct {struct listen_struct* next; struct net_device* dev; int /*<<< orphan*/  callsign; } ;
typedef  int /*<<< orphan*/  ax25_address ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct listen_struct*) ; 
 struct listen_struct* listen_list ; 
 int /*<<< orphan*/  listen_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(ax25_address *callsign, struct net_device *dev)
{
	struct listen_struct *s, *listen;

	FUNC2(&listen_lock);
	listen = listen_list;
	if (listen == NULL) {
		FUNC3(&listen_lock);
		return;
	}

	if (FUNC0(&listen->callsign, callsign) == 0 && listen->dev == dev) {
		listen_list = listen->next;
		FUNC3(&listen_lock);
		FUNC1(listen);
		return;
	}

	while (listen != NULL && listen->next != NULL) {
		if (FUNC0(&listen->next->callsign, callsign) == 0 && listen->next->dev == dev) {
			s = listen->next;
			listen->next = listen->next->next;
			FUNC3(&listen_lock);
			FUNC1(s);
			return;
		}

		listen = listen->next;
	}
	FUNC3(&listen_lock);
}