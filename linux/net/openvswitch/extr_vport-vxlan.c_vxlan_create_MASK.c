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
struct vport_parms {int /*<<< orphan*/  name; } ;
struct vport {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vport*) ; 
 struct vport* FUNC1 (struct vport*,int /*<<< orphan*/ ) ; 
 struct vport* FUNC2 (struct vport_parms const*) ; 

__attribute__((used)) static struct vport *FUNC3(const struct vport_parms *parms)
{
	struct vport *vport;

	vport = FUNC2(parms);
	if (FUNC0(vport))
		return vport;

	return FUNC1(vport, parms->name);
}