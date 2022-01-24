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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_tvlv_handler {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler_list_lock; } ;
struct batadv_priv {TYPE_1__ tvlv; } ;

/* Variables and functions */
 struct batadv_tvlv_handler* FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_tvlv_handler*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct batadv_priv *bat_priv,
				    u8 type, u8 version)
{
	struct batadv_tvlv_handler *tvlv_handler;

	tvlv_handler = FUNC0(bat_priv, type, version);
	if (!tvlv_handler)
		return;

	FUNC1(tvlv_handler);
	FUNC3(&bat_priv->tvlv.handler_list_lock);
	FUNC2(&tvlv_handler->list);
	FUNC4(&bat_priv->tvlv.handler_list_lock);
	FUNC1(tvlv_handler);
}