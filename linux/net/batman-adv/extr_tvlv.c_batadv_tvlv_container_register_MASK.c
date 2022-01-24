#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  len; void* type; void* version; } ;
struct batadv_tvlv_container {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; TYPE_1__ tvlv_hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  container_list_lock; int /*<<< orphan*/  container_list; } ;
struct batadv_priv {TYPE_2__ tvlv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct batadv_tvlv_container* FUNC1 (struct batadv_priv*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_tvlv_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,struct batadv_tvlv_container*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct batadv_tvlv_container* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct batadv_tvlv_container*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct batadv_priv *bat_priv,
				    u8 type, u8 version,
				    void *tvlv_value, u16 tvlv_value_len)
{
	struct batadv_tvlv_container *tvlv_old, *tvlv_new;

	if (!tvlv_value)
		tvlv_value_len = 0;

	tvlv_new = FUNC8(sizeof(*tvlv_new) + tvlv_value_len, GFP_ATOMIC);
	if (!tvlv_new)
		return;

	tvlv_new->tvlv_hdr.version = version;
	tvlv_new->tvlv_hdr.type = type;
	tvlv_new->tvlv_hdr.len = FUNC5(tvlv_value_len);

	FUNC9(tvlv_new + 1, tvlv_value, FUNC10(tvlv_new->tvlv_hdr.len));
	FUNC0(&tvlv_new->list);
	FUNC7(&tvlv_new->refcount);

	FUNC11(&bat_priv->tvlv.container_list_lock);
	tvlv_old = FUNC1(bat_priv, type, version);
	FUNC3(bat_priv, tvlv_old);

	FUNC6(&tvlv_new->refcount);
	FUNC4(&tvlv_new->list, &bat_priv->tvlv.container_list);
	FUNC12(&bat_priv->tvlv.container_list_lock);

	/* don't return reference to new tvlv_container */
	FUNC2(tvlv_new);
}