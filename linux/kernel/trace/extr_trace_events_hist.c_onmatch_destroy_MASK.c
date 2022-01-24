#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  event_system; int /*<<< orphan*/  event; } ;
struct action_data {TYPE_1__ match_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct action_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct action_data *data)
{
	FUNC1(data->match_data.event);
	FUNC1(data->match_data.event_system);

	FUNC0(data);
}