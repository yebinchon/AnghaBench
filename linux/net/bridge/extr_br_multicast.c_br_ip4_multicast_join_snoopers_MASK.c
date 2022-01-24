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
 int /*<<< orphan*/  FUNC0 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 

__attribute__((used)) static void FUNC4(struct net_bridge *br)
{
	struct in_device *in_dev = FUNC2(br->dev);

	if (!in_dev)
		return;

	FUNC0(in_dev, FUNC1(INADDR_ALLSNOOPERS_GROUP), GFP_ATOMIC);
	FUNC3(in_dev);
}