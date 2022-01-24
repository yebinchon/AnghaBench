#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vport {TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IFF_OVS_DATAPATH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC5(struct vport *vport)
{
	FUNC0();
	vport->dev->priv_flags &= ~IFF_OVS_DATAPATH;
	FUNC3(vport->dev);
	FUNC4(vport->dev,
				FUNC2(vport->dev));
	FUNC1(vport->dev, -1);
}