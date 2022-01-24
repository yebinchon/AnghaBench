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
struct o2net_sock_container {int dummy; } ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct o2net_sock_container*) ; 

__attribute__((used)) static void FUNC2(struct o2net_sock_container *sc,
					 struct delayed_work *work)
{
	if (FUNC0(work))
		FUNC1(sc);
}