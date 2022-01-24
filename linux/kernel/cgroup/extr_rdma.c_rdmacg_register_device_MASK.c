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
struct rdmacg_device {int /*<<< orphan*/  dev_node; int /*<<< orphan*/  rpools; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdmacg_devices ; 
 int /*<<< orphan*/  rdmacg_mutex ; 

void FUNC4(struct rdmacg_device *device)
{
	FUNC0(&device->dev_node);
	FUNC0(&device->rpools);

	FUNC2(&rdmacg_mutex);
	FUNC1(&device->dev_node, &rdmacg_devices);
	FUNC3(&rdmacg_mutex);
}