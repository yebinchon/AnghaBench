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
struct net {int dummy; } ;
struct devlink {int /*<<< orphan*/  _net; } ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net *FUNC1(const struct devlink *devlink)
{
	return FUNC0(&devlink->_net);
}