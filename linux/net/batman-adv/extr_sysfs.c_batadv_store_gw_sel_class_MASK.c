#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sel_class; } ;
struct batadv_priv {int /*<<< orphan*/  soft_iface; TYPE_3__ gw; TYPE_2__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* store_sel_class ) (struct batadv_priv*,char*,size_t) ;int /*<<< orphan*/  is_eligible; int /*<<< orphan*/  get_best_gw_node; } ;
struct TYPE_5__ {TYPE_1__ gw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TQ_MAX_VALUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct attribute*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct batadv_priv* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_post_gw_reselect ; 
 int /*<<< orphan*/  FUNC3 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
					 struct attribute *attr, char *buff,
					 size_t count)
{
	struct batadv_priv *bat_priv = FUNC1(kobj);
	ssize_t length;

	FUNC3(attr);

	/* setting the GW selection class is allowed only if the routing
	 * algorithm in use implements the GW API
	 */
	if (!bat_priv->algo_ops->gw.get_best_gw_node ||
	    !bat_priv->algo_ops->gw.is_eligible)
		return -EINVAL;

	if (buff[count - 1] == '\n')
		buff[count - 1] = '\0';

	if (bat_priv->algo_ops->gw.store_sel_class)
		return bat_priv->algo_ops->gw.store_sel_class(bat_priv, buff,
							      count);

	length = FUNC0(buff, count, 1, BATADV_TQ_MAX_VALUE,
					  batadv_post_gw_reselect, attr,
					  &bat_priv->gw.sel_class,
					  bat_priv->soft_iface, NULL);

	FUNC2(bat_priv);

	return length;
}