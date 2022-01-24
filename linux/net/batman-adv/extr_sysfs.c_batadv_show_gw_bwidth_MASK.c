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
typedef  int u32 ;
struct kobject {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bandwidth_up; int /*<<< orphan*/  bandwidth_down; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_priv* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
				     struct attribute *attr, char *buff)
{
	struct batadv_priv *bat_priv = FUNC1(kobj);
	u32 down, up;

	FUNC2(attr);

	down = FUNC0(&bat_priv->gw.bandwidth_down);
	up = FUNC0(&bat_priv->gw.bandwidth_up);

	return FUNC3(buff, "%u.%u/%u.%u MBit\n", down / 10,
		       down % 10, up / 10, up % 10);
}