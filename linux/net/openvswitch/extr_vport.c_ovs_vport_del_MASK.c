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
struct vport {TYPE_1__* ops; int /*<<< orphan*/  hash_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct vport*) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*) ; 

void FUNC3(struct vport *vport)
{
	FUNC0(&vport->hash_node);
	FUNC1(vport->ops->owner);
	vport->ops->destroy(vport);
}