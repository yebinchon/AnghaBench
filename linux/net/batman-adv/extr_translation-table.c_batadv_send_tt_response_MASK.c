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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_tvlv_tt_data {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct batadv_priv*,struct batadv_tvlv_tt_data*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct batadv_priv*,struct batadv_tvlv_tt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct batadv_priv *bat_priv,
				    struct batadv_tvlv_tt_data *tt_data,
				    u8 *req_src, u8 *req_dst)
{
	if (FUNC0(bat_priv, req_dst))
		return FUNC1(bat_priv, tt_data, req_src);
	return FUNC2(bat_priv, tt_data, req_src,
					     req_dst);
}