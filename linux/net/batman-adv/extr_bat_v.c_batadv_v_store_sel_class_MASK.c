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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sel_class; } ;
struct batadv_priv {TYPE_1__ gw; int /*<<< orphan*/  soft_iface; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,scalar_t__*) ; 

__attribute__((used)) static ssize_t FUNC4(struct batadv_priv *bat_priv,
					char *buff, size_t count)
{
	u32 old_class, class;

	if (!FUNC3(bat_priv->soft_iface, buff,
				     "B.A.T.M.A.N. V GW selection class",
				     &class))
		return -EINVAL;

	old_class = FUNC0(&bat_priv->gw.sel_class);
	FUNC1(&bat_priv->gw.sel_class, class);

	if (old_class != class)
		FUNC2(bat_priv);

	return count;
}