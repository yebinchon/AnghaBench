#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; TYPE_2__* up; } ;
struct caif_device_entry {TYPE_1__ layer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ctrlcmd ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  _CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND ; 
 int /*<<< orphan*/  _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND ; 
 struct caif_device_entry* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct caif_device_entry*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int on)
{
	struct caif_device_entry *caifd;

	FUNC3();

	caifd = FUNC0(dev);
	if (!caifd || !caifd->layer.up || !caifd->layer.up->ctrlcmd) {
		FUNC4();
		return;
	}

	FUNC1(caifd);
	FUNC4();

	caifd->layer.up->ctrlcmd(caifd->layer.up,
				 on ?
				 _CAIF_CTRLCMD_PHYIF_FLOW_ON_IND :
				 _CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND,
				 caifd->layer.id);
	FUNC2(caifd);
}