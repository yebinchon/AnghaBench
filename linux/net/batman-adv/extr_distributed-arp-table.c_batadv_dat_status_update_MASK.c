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
struct net_device {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*) ; 
 struct batadv_priv* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *net_dev)
{
	struct batadv_priv *bat_priv = FUNC1(net_dev);

	FUNC0(bat_priv);
}