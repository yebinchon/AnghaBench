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
struct TYPE_3__ {int /*<<< orphan*/  deviceid; } ;
struct nfs4_ff_layout_ds {int /*<<< orphan*/  ds_versions; int /*<<< orphan*/  ds; TYPE_1__ id_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 TYPE_2__ id_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_ff_layout_ds*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs4_ff_layout_ds *mirror_ds)
{
	FUNC3(&mirror_ds->id_node.deviceid);
	FUNC2(mirror_ds->ds);
	FUNC0(mirror_ds->ds_versions);
	FUNC1(mirror_ds, id_node.rcu);
}