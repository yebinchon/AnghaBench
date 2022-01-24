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
struct net_bridge {int /*<<< orphan*/  dev; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  INADDR_ALLSNOOPERS_GROUP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct in_device*) ; 

__attribute__((used)) static void FUNC5(struct net_bridge *br)
{
	struct in_device *in_dev = FUNC3(br->dev);

	if (FUNC0(!in_dev))
		return;

	FUNC1(in_dev, FUNC2(INADDR_ALLSNOOPERS_GROUP), GFP_ATOMIC);
	FUNC4(in_dev);
}