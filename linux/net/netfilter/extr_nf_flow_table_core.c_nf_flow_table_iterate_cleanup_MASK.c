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
struct nf_flowtable {int /*<<< orphan*/  gc_work; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_flow_table_do_cleanup ; 
 int /*<<< orphan*/  FUNC1 (struct nf_flowtable*,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct nf_flowtable *flowtable,
					  struct net_device *dev)
{
	FUNC1(flowtable, nf_flow_table_do_cleanup, dev);
	FUNC0(&flowtable->gc_work);
}