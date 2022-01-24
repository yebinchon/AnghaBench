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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bandwidth_up; int /*<<< orphan*/  bandwidth_down; } ;
struct batadv_priv {TYPE_1__ gw; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int,int,int,int,int,int,int,int) ; 
 int FUNC5 (struct net_device*,char*,int*,int*) ; 
 struct batadv_priv* FUNC6 (struct net_device*) ; 

ssize_t FUNC7(struct net_device *net_dev, char *buff,
				size_t count)
{
	struct batadv_priv *bat_priv = FUNC6(net_dev);
	u32 down_curr;
	u32 up_curr;
	u32 down_new = 0;
	u32 up_new = 0;
	bool ret;

	down_curr = (unsigned int)FUNC0(&bat_priv->gw.bandwidth_down);
	up_curr = (unsigned int)FUNC0(&bat_priv->gw.bandwidth_up);

	ret = FUNC5(net_dev, buff, &down_new, &up_new);
	if (!ret)
		return -EINVAL;

	if (!down_new)
		down_new = 1;

	if (!up_new)
		up_new = down_new / 5;

	if (!up_new)
		up_new = 1;

	if (down_curr == down_new && up_curr == up_new)
		return count;

	FUNC2(bat_priv);
	FUNC4(net_dev,
		    "Changing gateway bandwidth from: '%u.%u/%u.%u MBit' to: '%u.%u/%u.%u MBit'\n",
		    down_curr / 10, down_curr % 10, up_curr / 10, up_curr % 10,
		    down_new / 10, down_new % 10, up_new / 10, up_new % 10);

	FUNC1(&bat_priv->gw.bandwidth_down, down_new);
	FUNC1(&bat_priv->gw.bandwidth_up, up_new);
	FUNC3(bat_priv);

	return count;
}