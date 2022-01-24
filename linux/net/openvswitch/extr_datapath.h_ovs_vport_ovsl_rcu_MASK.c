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
struct vport {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct vport* FUNC2 (struct datapath const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct vport *FUNC4(const struct datapath *dp, int port_no)
{
	FUNC0(!FUNC3() && !FUNC1());
	return FUNC2(dp, port_no);
}